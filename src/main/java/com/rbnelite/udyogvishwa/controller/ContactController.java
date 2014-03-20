package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.Religion;
import com.rbnelite.udyogvishwa.service.ContactService;

@Controller
public class ContactController {
	
	@Resource
	private ContactService contactservice;
	
	@RequestMapping(value="/Contact", method=RequestMethod.POST)
	public String contact(@Valid Contact contact, BindingResult result,	@RequestParam("userMail") String emailId, @ModelAttribute("ContactCredential")ContactCredential contactcredential, ModelMap map){
		if(result.hasErrors())
		{
			return	"Step4Contact";
			
		}
		
		else
		{
	contactservice.SaveContact(contactcredential);
	map.put("CurrentEmailId", emailId);
	map.addAttribute("religion", new Religion());
	return "Step5Religion";
		}
	
	}
	
	@RequestMapping(value="/Contact")
	public String contactForm(ModelMap map)
	{
		return "Step4Contact";
	}

}
