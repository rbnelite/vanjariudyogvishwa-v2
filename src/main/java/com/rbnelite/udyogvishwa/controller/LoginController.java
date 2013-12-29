package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.Credential;
import com.rbnelite.udyogvishwa.service.LoginService;

@Controller
public class LoginController {
	
	@Resource
	private LoginService loginService;

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@ModelAttribute("credential") Credential credential, ModelMap map) {
		String status = "Login Failed";
		
		if(loginService.authenticate(credential.getLoginId(), credential.getPassword())) {
			status = "Login Successful";
		} else {
			loginService.insertRecord(credential);
		}
		
		map.addAttribute("status", status);
		return "login";
    }
	
	@RequestMapping(value="/login")
	public String loginForm(ModelMap map) {
		return "login";
    }
	
}
