package com.rbnelite.udyogvishwa.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.web.bind.annotation.SessionAttributes;

import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.service.IndexService;

@Controller
@SessionAttributes("CurrentEmailId")
public class IndexController {

	@Resource
	private IndexService indexservice;
	
	
	@RequestMapping(value="/Index" ,method=RequestMethod.POST)
	public String registration(@RequestParam("emailId") String emailId,  @ModelAttribute("IndexCredential")IndexCredential indexcredential,ModelMap map)
	{
		indexservice.saveRegistration(indexcredential);
		map.put("CurrentEmailId", emailId);

		return "Step3Occupation";
	}
	
	
	
	@RequestMapping(value="/loginAuthentication", method=RequestMethod.POST)
	public String initLogin(@RequestParam("user_name") String user_name, @RequestParam("password") String passWord, ModelMap map)
	{
		List<?> tempLoginUserList=indexservice.LoginAuthintication(user_name, passWord);
		
		if(!tempLoginUserList.isEmpty())
		{
			map.put("CurrentEmailId", user_name);
			
			return "Home";
		}
		
		else
		{
			map.put("LoginError", "Invalid userName or password !");
				return "Index";
		}
		
	}
	
	@RequestMapping(value="/logoutUser")
	public String logOutOperation(HttpServletRequest request,HttpServletResponse response,ModelMap map) throws ServletException {
		
		HttpSession session = request.getSession(true);
		
		session.removeAttribute("CurrentEmailId");
		
		map.put("LogOutMsg", "You are Loged Out Successfully !");
		
		return "Index";
		
	}
	
		@RequestMapping(value="/Index")
		public String indexForm(ModelMap map)
		{
			return "Index";
		}
		
}
