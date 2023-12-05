package com.phucnst.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phucnst.dao.OrderDAO;
import com.phucnst.dao.ProductDAO;
import com.phucnst.entity.Order;
import com.phucnst.entity.Report;

@Controller
public class AdminReportController {
	// 1. nhớ tiêm ProductDAO vào để gọi hàm
	@Autowired
	ProductDAO dao;
	@Autowired
	OrderDAO ordDao;

	@RequestMapping("/admin/report/inventory-by-category")
	public String inventory(Model model) {
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		return "management/report/inventory-by-category";
	}

	@RequestMapping("/admin/report/inventory-by-order")
	public String inventory1(Model model) {
		List<Report> items = dao.getInventoryByOrder();
		model.addAttribute("items", items);
		return "management/report/inventory-by-order";
	}

	@RequestMapping("/admin/report/inventory-by-order-month")
	public String inventory2(Model model) {
		List<Report> items = dao.getInventoryByOrder1();
		model.addAttribute("items", items);
		return "management/report/inventory-by-order-month";
	}

	@RequestMapping("/admin/report/submit-order")
	public String inventory3(Model model) {
		List<Order> items = ordDao.findByStatus("Đang xử lý");
		model.addAttribute("items", items);
		return "management/report/orders-manage";
	}

}
