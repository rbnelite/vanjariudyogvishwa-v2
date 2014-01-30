package com.rbnelite.udyogvishwa.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.service.IndexService;

@Controller
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
			System.out.println("From Index Controller Authintication SuccessFul.");
			return "Home";
		}
		
		else{
			map.put("LoginError", "invalid userName or password !");
			System.out.println("From Index Controller Authintication method.");
			return "Index";
		}
		
	}
	
		@RequestMapping(value="/Index")
		public String indexForm(ModelMap map)
		{
			return "Index";
		}
		
}
