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

import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.Religion;
import com.rbnelite.udyogvishwa.service.RelegionService;

@Controller
public class RelegionController {

	@Resource
	private RelegionService relegionservice;
	
	@RequestMapping(value="/Religion",method=RequestMethod.POST)
	public String RelegionMethod(@Valid Religion religion,BindingResult result,@RequestParam("usermail") String emailId, @ModelAttribute("ReligionCredential") ReligionCredential relegioncredential,ModelMap map){
		if(result.hasErrors())
		{
		return "Step5Religion";	
		}
		else
		{
		relegionservice.insertRelegion(relegioncredential);
		map.put("CurrentEmailId", emailId);
		map.addAttribute("educationWork", new EducationWork());
		return "Step8EducationWork";
		}
	}
	
	@RequestMapping(value="/Religion")
	public String RelegionForm(ModelMap map){
	
		map.addAttribute("religion", new Religion());
		return "Step5Religion";
	}
	
}
