package com.empcrud.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.empcrud.model.User;

public class AuthInterceptor implements HandlerInterceptor{
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		User user = (User) request.getSession().getAttribute("loginuser");
		if (user == null) {
			response.getWriter().print("<h1>Please Login</h1>");
			return false;
		} else {
			return true;
		}

	}
	

}
