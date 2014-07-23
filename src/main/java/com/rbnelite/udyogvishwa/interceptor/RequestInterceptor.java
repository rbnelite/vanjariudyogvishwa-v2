package com.rbnelite.udyogvishwa.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.utils.Constants;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Component
public class RequestInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		String uri = request.getRequestURI();
		if (!uri.endsWith("loginAuthentication") && !uri.endsWith("logoutUser") && !uri.endsWith("Index")&&!uri.endsWith("ForgotPassword")
				&&!uri.endsWith(".png")	&&!uri.endsWith(".css")&&!uri.endsWith(".js")) {
			LoginUser loginUser = (LoginUser) request.getSession().getAttribute(Constants.LOGGEDIN_USER);
			
			if (loginUser == null) {
				response.sendRedirect("Index");
				return false;
			}
						
			RequestContext.setUser(loginUser);
		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler, ModelAndView modelView) throws Exception {
		RequestContext.clear();
	}
}
