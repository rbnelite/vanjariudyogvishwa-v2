package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.IntrestAreasCredential;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;

@Controller
public class IntrestAreasController {

	@Resource
	private IntrestAreasService intrestareasservice;
	
	@RequestMapping(value="/IntrestAreas",method=RequestMethod.POST)
	public String insertIntrestAreas(@ModelAttribute("IntrestAreasCredential") IntrestAreasCredential intrestareascredential,ModelMap map){
		
		intrestareasservice.insertIntrestAreas(intrestareascredential);
		
		return "Step2InterestArea";
	}
	
	@RequestMapping(value="/IntrestAreas")
	public String interestAreasForm()
	{
		return "Step2InterestArea";
	}
}
