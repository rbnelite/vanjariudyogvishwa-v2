package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.IntrestAreasCredential;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;

@Controller
public class IntrestAreasController {

	@Resource
	private IntrestAreasService intrestareasservice;
	
	
	@RequestMapping(value="/IntrestAreas",method=RequestMethod.POST)
	public String insertIntrestAreas(@RequestParam("userMail") String emailId, @ModelAttribute("IntrestAreasCredential") IntrestAreasCredential intrestareascredential,ModelMap map){
		
		intrestareasservice.insertIntrestAreas(intrestareascredential);
		
		map.put("CurrentEmailId", emailId);
		map.addAttribute("occupation", new Occupation());

		map.put("IAstatus", true);
		return "Registration";
	}
	
	@RequestMapping(value="/IntrestAreas")
	public String interestAreasForm(ModelMap map)
	{
		return "Registration";
	}
}
