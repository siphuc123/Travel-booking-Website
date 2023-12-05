package com.phucnst.controller;

import java.io.File;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.phucnst.bean.SessionAttr;
import com.phucnst.dao.AccountDAO;
import com.phucnst.entity.Account;
import com.phucnst.service.CookieService;
import com.phucnst.service.MailerService;
import com.phucnst.service.ParamService;
import com.phucnst.service.SessionService;

@Controller
public class AccountController {
	@Autowired
	AccountDAO dao;
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService session;
	@Autowired
	HttpSession sessions;
	@Autowired
	MailerService mailer;

	@GetMapping("/account/login")
	public String openLogin() {
		session.set("msg", "Chào bạn.");
		session.set("color", "info");
		return "loginPage";
	}

	@GetMapping("/register")
	public String openRegister() {
		return "registerPage";
	}

	@RequestMapping("/account/logout")
	public String logout(Model model) {
		session.set("msg", "Đã đăng xuất.");
		session.set("color", "warning");
		session.remove("username");
		System.out.println("Đã đăng xuất.");
		return "redirect:/account/login";
	}

	/*
	 * @RequestMapping("/account/create") public String create(Account item) {
	 * dao.save(item); return "redirect:/category/index"; }
	 */

	@RequestMapping("/account/register/addAccount")
	public String createAccount(@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("fullname") String fullname, @RequestParam("email") String email, Account item, Model model,
			@RequestParam("photo_file") MultipartFile file) {
		try {
			item.setUsername(username);
			item.setPassword(password);
			item.setFullname(fullname);
			item.setEmail(email);
			// upload file hình ảnh
			File saveFile = paramService.save(file, "photo");
			item.setPhoto(file.getOriginalFilename());
			dao.save(item);
			model.addAttribute("msg", "Thêm tài khoản thành công!!");
			model.addAttribute("color", "success");
			System.out.print("Thêm thành công");
			return "redirect:/account/login";
		} catch (Exception e) {
			model.addAttribute("msg", "Kiểm tra lại thông tin !!");
			model.addAttribute("color", "danger");
			System.out.print("Lỗi: " + e);
			return "redirect:/register";
		}
	}

	// khi người dùng click vào login xử lý hàm sau
	// thêm đối sô : @RequestParam("photo_file") MultipartFile file
	@SuppressWarnings("deprecation")
	@PostMapping("/account/login")
	public String Login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password) {
		boolean remember = paramService.getBoolean("remember", false);
		String errors, colors;
		try {
			Optional<Account> user = dao.findById(username);
			if (username.equals(user.get().getUsername())) {
				if (!password.equalsIgnoreCase(user.get().getPassword())) {
					errors = "Mật khẩu sai !, kiểm tra lại.";
					colors = "danger";
					session.set("msg", errors);
					session.set("color", colors);
					System.out.println("Sai mật khẩu.");
				} else {
					String uri = session.get("security-uri");
					if (uri != null) {
						return "redirect:" + uri;
					} else {
						// Lưu lại tài khoản qua các trang khác
						sessions.setAttribute(SessionAttr.CURRENT_USER, user);

						session.set("username", username);
						session.set("fullname", user.get().getFullname());
						session.set("photo", user.get().getPhoto());
						session.set("isAdmin", user.get().isAdmin());
						errors = "Đăng nhập thành công.";
						colors = "success";
						session.set("msg", errors);
						session.set("color", colors);
						System.out.println("Login Thành công nè.");
						// neu nguoi dung check vao remember
						if (remember) {
							// 8. tạo 2 cookie ten la user va pass ... sống 10 giờ
							cookieService.add("user", username, 10);
							cookieService.add("pass", password, 10);
							System.out.println("Lưu cookie thành công.");
						} else {
							// 9. ko check rememember thì xóa cookie user va pass
							cookieService.remove("user");
							cookieService.remove("pass");
						}
						if (user.get().isAdmin()) {
							errors = "Chào mừng bạn quay trở lại, " + user.get().getFullname();
							colors = "info";
							session.set("msg", errors);
							session.set("color", colors);
							return "redirect:/admin/home";
						} else {
							return "redirect:/shop/page"; // - Đăng nhập thành công đi thẳng tới trang sp
						}
					}
				}
			} else {
				errors = "Tài khoản không tồn tại !";
				colors = "danger";
				session.set("msg", errors);
				session.set("color", colors);
				System.out.println("Tài khoản không tồn tại.");
				return "redirect:/account/login"; // - view len trang login
			}
			return "redirect:/account/login";
		} catch (Exception e) {
			errors = "Tài khoản không đúng !!";
			colors = "danger";
			session.set("msg", errors);
			session.set("color", colors);
			System.out.println("Lỗi: " + e);
			return "redirect:/account/login"; // - view len trang login

		}
	}
}
