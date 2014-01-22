package com.rbnelite.udyogvishwa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.utils.Constants;
import com.rbnelite.udyogvishwa.utils.RequestContext;

public class RequestInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		String uri = request.getRequestURI();
		if (!uri.endsWith("login") && !uri.endsWith("logout")) {
			LoginUser loginUser = (LoginUser) request.getSession().getAttribute(Constants.LOGGEDIN_USER);
			
			if (loginUser == null) {
				response.sendRedirect("login.do");
				return false;
			}
			
			RequestContext.setUser(loginUser);
		}
		
		return true;
	}
}
