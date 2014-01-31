package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.service.ContactService;

@Controller
public class ContactController {
	
	@Resource
	private ContactService contactservice;
	
	@RequestMapping(value="/Contact", method=RequestMethod.POST)
	public String contact(@RequestParam("emailId") String emailId, @ModelAttribute("ContactCredential")ContactCredential contactcredential, ModelMap map){
		
	contactservice.SaveContact(contactcredential);
	map.put("CurrentEmailId", emailId);
	return "Step5Religion";
	}
	
	@RequestMapping(value="/Contact")
	public String contactForm(ModelMap map)
	{
		return "Step4Contact";
	}

}
