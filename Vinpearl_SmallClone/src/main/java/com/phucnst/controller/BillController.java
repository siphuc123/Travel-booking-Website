package com.phucnst.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BillController {

	@RequestMapping("/YourBill")
	public String bill() {

		return "billPage";
	}
}
