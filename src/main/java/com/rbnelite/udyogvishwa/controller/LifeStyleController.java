package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LifeStyleCredential;
import com.rbnelite.udyogvishwa.service.LifeStyleService;

@Controller
public class LifeStyleController {

	@Resource
	LifeStyleService lifestyleservice;
	
	@RequestMapping(value="/LifeStyle",method=RequestMethod.POST)
	public String LifeStyleMethod(@RequestParam("usermail") String emailId,@ModelAttribute("LifeStyleCredential") LifeStyleCredential lifestylecredential,ModelMap map){
		
		lifestyleservice.insertLifeStyle(lifestylecredential);
		map.put("CurrentEmailId", emailId);
		
		return "Step10Hobbies";
	}
	
	@RequestMapping(value="/LifeStyle")
	public String LifeStyleForm(){
		return "Step9LifeStyle";
		
	}
}
