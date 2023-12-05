package com.phucnst.controller;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phucnst.bean.MailInfo;
import com.phucnst.service.MailerService;

@Controller
public class MailerController {
	@Autowired
	MailerService mailer;

	@ResponseBody
	@RequestMapping("/mailer/test")
	public String testThu01(Model model) {
		try {
			mailer.send("phucnstps20362@fpt.edu.vn", "Subject..ASM Mail Hỗ trợ",
					"Body...Cho tui hỏi giá bao nhiêu cho gia đình?");
			return "OK";
		} catch (MessagingException e) {
			return e.getMessage();
		}
	}

	// Phải tạo ra MailInfo để truyền vào trước khi muốn truyền đi
	@RequestMapping("/mailer/test3")
	public String demo3(Model model) {
		// 1. mail người nhận
		// mailer.queue("phucnstps20362@fpt.edu.vn", "Subject",
		// "Body.");
		MailInfo mailinfo = new MailInfo();
		model.addAttribute("mailinfo", mailinfo);
		return "redirect:/shop/page";
	}

}
