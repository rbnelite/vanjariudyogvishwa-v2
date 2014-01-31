package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.HobbiesCredential;
import com.rbnelite.udyogvishwa.service.HobbiesService;

@Controller
public class HobbiesController {

	@Resource
	private HobbiesService hobbiesservice;
	
	@RequestMapping(value="/Hobbies", method=RequestMethod.POST)
	public String Hobbies(@RequestParam("usermail") String emailId, @ModelAttribute("HobbiesCredential")HobbiesCredential hobbycredential,ModelMap map)
	{
		hobbiesservice.saveHobbies(hobbycredential);
		map.put("CurrentEmailId", emailId);
		return "Step11OtherDetails";
	}
	
	@RequestMapping(value="/Hobbies")
	public String HobbiesForm(ModelMap map)
	{
		return "Step10Hobbies";
	}
}
