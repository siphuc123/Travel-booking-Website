package com.phucnst.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phucnst.dao.AccountDAO;
import com.phucnst.dao.CategoryDAO;
import com.phucnst.dao.OrderDAO;
import com.phucnst.dao.OrderDetailDAO;
import com.phucnst.dao.ProductDAO;
import com.phucnst.entity.Account;
import com.phucnst.entity.Category;
import com.phucnst.entity.Order;
import com.phucnst.entity.Product;
import com.phucnst.service.SessionService;

@Controller
public class AdminController {

	@Autowired
	ProductDAO dao; // 1. làm việc với bảng Categories
	@Autowired
	CategoryDAO daoCate;
	@Autowired
	AccountDAO daoAc;
	@Autowired
	OrderDetailDAO orderDeatailDao;
	@Autowired
	OrderDAO ordDao;
	@Autowired
	HttpSession session;
	@Autowired
	SessionService sessionS;

	@RequestMapping("/admin/home")
	public String admin() {

		return "management/admin";
	}

	@RequestMapping("/admin/product/edit/{id}")
	public String editProduct(Model model, @PathVariable("id") Integer id, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		// p là trang thứ mấy cần xuất
		// p không xác định ...thì xuất trang thứ 0
		// mỗi trang 8 sản phẩm
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);

		// Truyền sắp xếp (mặc định là theo giá)
		model.addAttribute("field", field.orElse("price").toUpperCase());

		// Truyền thể loại
		List<Category> items = daoCate.findAll();
		model.addAttribute("items", items);
		return "management/product/page2";
	}

	@RequestMapping("/admin/product/create")
	public String createProduct(Product item, Model model) {
		String errors, colors;
		try {
			errors = "Thêm thành công.";
			colors = "success";
			sessionS.set("msg", errors);
			sessionS.set("color", colors);
			dao.save(item);
		} catch (Exception e) {
			errors = "Có lỗi rồi !";
			colors = "danger";
			sessionS.set("msg", errors);
			sessionS.set("color", colors);
		}

		return "redirect:/admin/product/page";
	}

	@RequestMapping("/admin/product/update")
	public String updateProduct(Product item, Model model) {
		// dao.save(item);
		Product items = dao.save(item);
		model.addAttribute("item", items);
		return "redirect:/admin/product/edit/" + item.getId();
	}

	@RequestMapping("/admin/product/delete/{id}")
	public String deleteProduct(@PathVariable("id") Integer id) {
		// 5. xóa danh mục dựa vào id
		dao.deleteById(id);
		return "redirect:/admin/product/page#nav-list";
	}

	@RequestMapping("/admin/product/search")
	public String searchProduct(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		// List<Product> items = dao.findByPrice(minPrice, maxPrice);
		List<Product> items = dao.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "redirect:/admin/product/page#nav-list";
	}

	@RequestMapping("/admin/product/search-and-page")
	public String searchAndPageProduct(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(sessionS.get("keywords", ""));
		sessionS.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		// Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable); //lab6.3
		Page<Product> page = dao.findAllByNameLike("%" + kwords + "%", pageable); // lab6.5
		model.addAttribute("page", page);
		return "redirect:/admin/product/page#nav-list";
	}

	// tài khoản

	@RequestMapping("/admin/account/index")
	public String indexAccount(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		Account item = new Account();
		model.addAttribute("item", item);
		// p là trang thứ mấy cần xuất
		// p không xác định ...thì xuất trang thứ 0
		// mỗi trang 5 sản phẩm
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> page = daoAc.findAll(pageable);
		model.addAttribute("page", page);
		// Truyền sắp xếp (mặc định là theo role)
		model.addAttribute("field", field.orElse("admin").toUpperCase());
		// return "category/index"; //3. view trang index lên
		return "management/account/index"; // 3. view trang index lên
	}

	// 2. khi click vào edit...
	@RequestMapping("/admin/account/edit/{username}")
	public String editAccount(Model model, @PathVariable("username") String username) {
		Account item = daoAc.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = daoAc.findAll();
		model.addAttribute("items", items);
		return "management/account/index";
	}

	@RequestMapping("/admin/account/create")
	public String createAccount(Account item) {
		daoAc.save(item);
		return "redirect:/admin/account/index";
	}

	@RequestMapping("/admin/account/update")
	public String updateAccount(Account item, Model model) {
		daoAc.save(item);
		return "redirect:/admin/account/edit/" + item.getUsername();
	}

	@RequestMapping("/admin/account/delete/{username}")
	public String createAccount(@PathVariable("username") String username) {
		// 5. xóa danh mục dựa vào id
		daoAc.deleteById(username);
		return "redirect:/admin/account/index";
	}

	// my account
	@RequestMapping("/admin/myaccount/edit/{username}")
	public String editMyAccount(Model model, @PathVariable("username") String username) {
		Account item = daoAc.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = daoAc.findAll();
		model.addAttribute("items", items);
		return "management/account/myAcc";
	}

	@RequestMapping("/admin/myaccount/update")
	public String updateMyAccount(Account item, Model model) {
		daoAc.save(item);
		session.setAttribute("msg", "Cập nhật tài khoản thành công !!");
		return "redirect:/admin/myaccount/edit/" + item.getUsername();
	}

	// đơn hàng trạng thái
	@RequestMapping("/admin/report/ok/edit/{id}")
	public String accept(Model model, @PathVariable("id") Long id) {
		Order item = ordDao.findById(id).get();
		item.setStatus("Xác nhận");
		ordDao.save(item);

		/*
		 * List<Order> items = ordDao.findAll(); model.addAttribute("items", items);
		 */
		return "redirect:/admin/report/submit-order";
	}

	@RequestMapping("/admin/report/not/edit/{id}")
	public String notOK(Model model, @PathVariable("id") Long id) {
		Order item = ordDao.findById(id).get();
		item.setStatus("Đã hủy");
		ordDao.save(item);
		return "redirect:/admin/report/submit-order";
	}
}
