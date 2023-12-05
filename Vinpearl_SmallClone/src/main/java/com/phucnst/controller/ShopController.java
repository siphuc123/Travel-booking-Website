package com.phucnst.controller;

import java.util.Optional;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phucnst.bean.MailInfo;
import com.phucnst.dao.ProductDAO;
import com.phucnst.entity.Product;
import com.phucnst.service.MailerService;

@Controller
public class ShopController {

	@Autowired
	ProductDAO dao;

	@Autowired
	MailerService mailer;

	@RequestMapping("/shop/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		// 1. p là trang thứ mấy cần xuất
		// 2. p không xác định ...thì xuất trang thứ 0
		// 3. mỗi trang 6 sản phẩm
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("items", dao.findAll());

		MailInfo mailinfo = new MailInfo();
		model.addAttribute("mailinfo", mailinfo);
		if (mailinfo != null) {
			model.addAttribute("mail", mailinfo);
		}

		return "shoppingPage";
	}

	@RequestMapping("/shop/mailer/send")
	public String send(Model model, MailInfo mailinfo) throws MessagingException {
		// 1. mail người nhận
		mailer.send(mailinfo.getTo(), mailinfo.getSubject(), mailinfo.getBody());
		model.addAttribute("mail", mailinfo);
		return "redirect:/shop/page";
	}

}
