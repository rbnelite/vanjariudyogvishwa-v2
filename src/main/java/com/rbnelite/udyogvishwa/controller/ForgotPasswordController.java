package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.service.ForgetPasswordService;


@Controller
public class ForgotPasswordController {
	
	@Resource
	private ForgetPasswordService forgotpasswordser;
	
	@RequestMapping(value="/ForgotPassword",method=RequestMethod.POST)
	public String formForgotPass(@RequestParam("emailAddress")String emailAddress,Map<String, Object> map)
	{
		map.put("emailAddress", emailAddress);
		forgotpasswordser.getOldPassword(emailAddress);
		return "Forgot_Pass";
	}

	
	@RequestMapping(value="/ForgotPassword")
	public String forgotPassForm()
	{
		return "Forgot_Pass";
	}

}
