package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.AnilCrenditial;
import com.rbnelite.udyogvishwa.service.AnilService;

@Controller
public class AnilController {
	
	@Resource
	private AnilService abservice;
	
	@RequestMapping(value="/Anil", method=RequestMethod.POST)
   public String Reg(@ModelAttribute("AnilCrenditial") AnilCrenditial abcredential, ModelMap map) {
				
		
		abservice.RegisterAnil(abcredential);
		//abservice.RegisterAnil(regcredential)l(abcredential);
		
		return "Anil";
    }
	
	@RequestMapping(value="/Anil")
	public String AnilForm(ModelMap map) {
		return "Anil";
    }
	

}
