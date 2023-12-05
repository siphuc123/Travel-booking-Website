package com.phucnst.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.phucnst.service.SessionService;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	SessionService session;
	@Autowired
	HttpSession save;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		// Account user = session.get("username");
		// save.setAttribute(SessionAttr.CURRENT_USER, user);

		/*
		 * String error = ""; if (user == null) { error = "Please-login!"; } else if
		 * (!user.isAdmin() && uri.startsWith("/admin/")) { error = "Access-denied!"; }
		 * if (error.length() > 0) { session.set("security-uri", uri);
		 * response.sendRedirect("/account/login?error=" + error); return false; }
		 */
		return true;
	}
}