package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.RegistrationCredential;
import com.rbnelite.udyogvishwa.service.RegistrationService;

@Controller
public class RegistrationController {
	
	@Resource
	private RegistrationService regservice;
	
	@RequestMapping(value="/Registration", method=RequestMethod.POST)
	public String login(@ModelAttribute("RegistrationCredential") RegistrationCredential regcredential, ModelMap map) {
				
		
		regservice.RegisterUser(regcredential);
		
		return "Registration";
    }
	
	@RequestMapping(value="/Registration")
	public String RegistrationForm(ModelMap map) {
		return "Registration";
    }
	

}
