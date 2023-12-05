package com.phucnst.serviceImpl;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.phucnst.bean.Item;
import com.phucnst.dao.ProductDAO;
import com.phucnst.entity.Product;
import com.phucnst.service.ShoppingCartService;

//1. phạm vi là session
@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	@Autowired
	ProductDAO dao;

	// 2. dùng HashMap ...chứa danh sách món hàng
	Map<Integer, Item> map = new HashMap<>();

	@Override
	// 3. thêm 1 món hàng vào giỏ hàng dựa vào mã sản phẩm id
	public Item add(Integer id) {
		// 4. kiểm tra id này có trong giỏ hàng chưa
		Item item = map.get(id);
		// 5. nếu chưa có món hàng trong giỏ hàng
		if (item == null) {
			item = new Item();
			Product p = new Product();
			List<Product> list = dao.findAll();
			// p = list.get(id); // hàm get lấy theo index, ko lấy theo id
			// 6. lấy ra 1 món hàng dựa vào id
			p = list.stream().filter(it -> it.getId() == id).collect(Collectors.toList()).get(0);
			item.setId(p.getId());
			item.setName(p.getName());
			// Format Currency
			item.setPrice(p.getPrice());
			item.setImage(p.getImage());
			item.setCreateDate(p.getCreateDate());
			// item.setQty(1);
			// item = DB.items.get(id);
			item.setQty(1); // 7. set số lượng là 1
			map.put(id, item); // 8. thêm vào giỏ hàng
		} else {
			// 9. ngược lại có trong giỏ hàng thì tăng số lượng lên 1
			item.setQty(item.getQty() + 1);
		}
		return item;
	}

	@Override
	public void remove(Integer id) {
		// 10. xóa món hàng dựa vào mã sản phẩm id
		map.remove(id);
	}

	@Override
	public Item update(Integer id, int qty) {
		// 11. cập nhật cho id nào với số lượng
		Item item = map.get(id);
		item.setQty(qty);
		return item;
	}

	@Override
	public void clear() {
		map.clear();

	}

	@Override
	public Collection<Item> getItems() {
		return map.values();
	}

	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(item -> item.getPrice() * item.getQty()).sum();
	}
}
