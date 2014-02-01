package com.rbnelite.udyogvishwa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ThankYouController {

	@RequestMapping(value="/ThankYou")
	public String thankYouProcess(@RequestParam("usermail") String emailId,ModelMap map){
		
		map.put("CurrentEmailId", emailId);
		return "Profile";
	}
	
	
	
}
