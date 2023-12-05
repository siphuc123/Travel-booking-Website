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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.phucnst.dao.CategoryDAO;
import com.phucnst.entity.Category;

@Controller
public class AdminCategoryController {
	// 1. tiêm vào CategoryDAO
	@Autowired
	CategoryDAO dao; // 2. làm việc với bảng Categories

	@RequestMapping("/admin/category/index")
	public String index(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		// Tạo đối tượng
		Category item = new Category();
		model.addAttribute("item", item);
		// p là trang thứ mấy cần xuất
		// p không xác định ...thì xuất trang thứ 0
		// mỗi trang 5 sản phẩm
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Category> page = dao.findAll(pageable);
		model.addAttribute("page", page);

		// Truyền sắp xếp (mặc định là theo giá)
		model.addAttribute("field", field.orElse("price").toUpperCase());

		// return "category/index";
		return "management/category/index2"; // //5. view lên trang index2
	}

	@RequestMapping("/admin/category/page/sort")
	public String sort(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("field") Optional<String> field) {
		// Tạo đối tượng
		Category item = new Category();
		model.addAttribute("item", item);
		// 1. field sắp xếp theo trường/ field/ cột nào
		// 2. DESC : sắp xếp giảm dần
		// 3. Ngược lại ko chỉ định field nào thì sắp xếp theo price
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Category> items = dao.findAll(sort); // 4. danh sách phẩm có sap xếp
		model.addAttribute("items", items);
		// Phân trang
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Category> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "management/category/index2"; // 5. view lên trang sort
	}

	// khi click vào edit
	@RequestMapping("/admin/category/edit/{id}")
	public String edit(Model model, @RequestParam("p") Optional<Integer> p, @PathVariable("id") String id) {
		// 2. tìm theo id
		Category item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		// phân trang
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Category> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "management/category/index2";
	}

	// khi click vào button create
	@RequestMapping("/admin/category/create")
	public String create(Model model, Category item) {
		String errors, colors;
		try {
			errors = "Thêm thành công.";
			colors = "success";
			model.addAttribute("msg", errors);
			model.addAttribute("color", colors);
			dao.save(item);
		} catch (Exception e) {
			errors = "Có lỗi rồi !";
			colors = "danger";
			model.addAttribute("msg", errors);
			model.addAttribute("color", colors);
		}
		return "redirect:/admin/category/index";
	}

	// cập nhật
	@RequestMapping("/admin/category/update")
	public String update(Category item) {
		dao.save(item);
		return "redirect:/admin/category/edit/" + item.getId();
	}

	@RequestMapping("/admin/category/delete/{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin/category/index";
	}

}
