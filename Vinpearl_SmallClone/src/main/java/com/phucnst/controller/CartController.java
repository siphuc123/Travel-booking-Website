package com.phucnst.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phucnst.bean.Item;
import com.phucnst.dao.AccountDAO;
import com.phucnst.dao.OrderDAO;
import com.phucnst.dao.ProductDAO;
import com.phucnst.entity.Account;
import com.phucnst.entity.Order;
import com.phucnst.entity.OrderDetail;
import com.phucnst.service.SessionService;
import com.phucnst.service.ShoppingCartService;

@Controller
public class CartController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDao;
	@Autowired
	OrderDAO orderDao;
	@Autowired
	ProductDAO productDao;

	@RequestMapping("/YourCart")
	public String cart(Model model) {
		double tongTien = cart.getAmount();
		model.addAttribute("cart", cart);
		model.addAttribute("SL", cart.getItems().size());
		model.addAttribute("Tong", tongTien);
		return "cartPage";
	}

	///////////////////////////////////
	@RequestMapping("/YourCart/add/{id}")
	public String add(@PathVariable("id") Integer id) {
		cart.add(id);
		return "redirect:/YourCart"; // hiển thị giỏ hàng
	}

	@RequestMapping("/YourCart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/YourCart";
	}

	@RequestMapping("/YourCart/update/{id}")
	public String update(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/YourCart";
	}

	@RequestMapping("/YourCart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/YourCart";
	}

	@RequestMapping("/YourCart/checkout")
	public String checkout(@RequestParam("address") String address) {

		String username = session.get("username");
		System.out.print(address); // test thử xem có không?
		Account currentAcc = null;
		System.out.println("username: " + username);
		if (accountDao.findById(username).isPresent()) {
			currentAcc = accountDao.findById(username).get();
			Order ord = new Order();
			ord.setAccount(currentAcc);
			ord.setCreateDate(new Date());
			ord.setAddress(address);
			ord.setStatus("Đang xử lý");
			List<OrderDetail> details = new ArrayList<>();
			for (Item item : cart.getItems()) {
				OrderDetail od = new OrderDetail();
				od.setOrder(ord);
				productDao.findById(item.getId()).ifPresent(p -> {
					od.setProduct(p);
				});
				od.setPrice(item.getPrice());
				od.setQuantity(item.getQty());
				details.add(od);
			}
			ord.setOrderDetails(details);
			orderDao.save(ord);
			cart.clear();
		}

		return "redirect:/YourCart";
	}
}
