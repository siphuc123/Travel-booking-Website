package com.phucnst.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	AuthInterceptor auth;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(auth).addPathPatterns("/cart/view") // đăng nhập
				.addPathPatterns("/admin/**").excludePathPatterns("/assets/**", "/admin/home");
		// đăng nhập với vai trò admin
	}

}
