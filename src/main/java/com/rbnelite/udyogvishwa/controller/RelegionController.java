package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.service.RelegionService;

@Controller
public class RelegionController {

	@Resource
	RelegionService relegionservice;
	
	@RequestMapping(value="/Religion",method=RequestMethod.POST)
	public String RelegionMethod(@RequestParam("emailId") String emailId, @ModelAttribute("ReligionCredential") ReligionCredential relegioncredential,ModelMap map){
		
		relegionservice.insertRelegion(relegioncredential);
		map.put("CurrentEmailId", emailId);
		
		return "Step7Astro";
	}
	
	@RequestMapping(value="/Religion")
	public String RelegionForm(){
		return "Step5Religion";
	}
	
}
