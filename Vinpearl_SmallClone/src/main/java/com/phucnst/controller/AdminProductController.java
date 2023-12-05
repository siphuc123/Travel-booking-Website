package com.phucnst.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phucnst.dao.CategoryDAO;
import com.phucnst.dao.ProductDAO;
import com.phucnst.entity.Category;
import com.phucnst.entity.Product;
import com.phucnst.service.SessionService;

@Controller
public class AdminProductController {
	// 1. tiêm ProductDAO vào
	@Autowired
	ProductDAO dao;

	@Autowired
	CategoryDAO categoryDao;

//	@RequestMapping("/product/sort")
//	public String sort(Model model) {
//		//3. lấy danh sách sản phẩm
//		List<Product> items = dao.findAll(); // truy vấn tất cả
//		model.addAttribute("items", items);
//		return "management/product/sort"; //4. view lên trang sort
//	}

	@RequestMapping("/admin/product/page/sort")
	public String sort(Model model, @RequestParam("field") Optional<String> field) {
		// 1. field sắp xếp theo trường/ field/ cột nào
		// 2. DESC : sắp xếp giảm dần
		// 3. Ngược lại ko chỉ định field nào thì sắp xếp theo price
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = dao.findAll(sort); // 4. danh sách phẩm có sap xếp
		model.addAttribute("page", items);
		return "redirect:/admin/product/page#nav-list"; // 5. view lên trang sort
	}

	@RequestMapping("/admin/product/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		// Tạo đối tượng
		Product item = new Product();
		model.addAttribute("item", item);
		// p là trang thứ mấy cần xuất
		// p không xác định ...thì xuất trang thứ 0
		// mỗi trang 5 sản phẩm
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);

		// Truyền sắp xếp (mặc định là theo giá)
		model.addAttribute("field", field.orElse("price").toUpperCase());

		// Truyền thể loại
		List<Category> items = categoryDao.findAll();
		model.addAttribute("items", items);

		return "management/product/page2";
	}

	@RequestMapping("/product/search")
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		// List<Product> items = dao.findByPrice(minPrice, maxPrice);
		List<Product> items = dao.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "redirect:/shop/page";
	}

	@Autowired
	SessionService session;

	@RequestMapping("/product/search-and-page")
	public String searchAndPage(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		// Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable); //lab6.3
		Page<Product> page = dao.findAllByNameLike("%" + kwords + "%", pageable); // lab6.5
		model.addAttribute("page", page);
		return "redirect:/shop/page";
	}

}
