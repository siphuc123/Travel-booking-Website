package com.phucnst.service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CookieService {
	// 1. tiêm vào
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;

	/**
	 * Đọc cookie từ request
	 * 
	 * @param name tên cookie cần đọc
	 * @return đối tượng cookie đọc được hoặc null nếu không tồn tại
	 */
	// 1. hàm lấy cookie ra
	public Cookie get(String name) {
		// 2. lấy tất cả các cookies ra
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equalsIgnoreCase(name)) {
					return cookie;
				}
			}
		}
		return null;
	}

	/**
	 * Đọc giá trị của cookie từ request
	 * 
	 * @param name tên cookie cần đọc
	 * @return chuỗi giá trị đọc được hoặc rỗng nếu không tồn tại
	 */
	public String getValue(String name, String defaultValue) {
		Cookie cookie = get(name);
		if (cookie != null) {
			return cookie.getValue();
		}
		return defaultValue;
	}

	/**
	 * Tạo và gửi cookie về client
	 * 
	 * @param name  tên cookie
	 * @param value giá trị cookie
	 * @param hours thời hạn (giờ)
	 * @return đối tượng cookie đã tạo
	 */
	// 2. hàm tạo cookie
	public Cookie add(String name, String value, int hours) {
		// 3. tạo 1 đối tượng cookie
		Cookie cookie = new Cookie(name, value);
		// 4. tuổi thọ của cookie...sống bao nhiêu giờ
		cookie.setMaxAge(hours * 60 * 60);
		cookie.setPath("/");
		response.addCookie(cookie);
		return cookie;
	}

	/**
	 * Xóa cookie khỏi client
	 * 
	 * @param name tên cookie cần xóa
	 */
	public void remove(String name) {
		add(name, "", 0); // xóa cookie
	}
}
