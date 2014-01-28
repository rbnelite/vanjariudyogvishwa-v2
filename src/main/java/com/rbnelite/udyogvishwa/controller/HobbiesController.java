package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.HobbiesCredential;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.service.HobbiesService;

@Controller
public class HobbiesController {

	@Resource
	private HobbiesService hobbiesservice;
	
	@RequestMapping(value="/Hobbies", method=RequestMethod.POST)
	public String Hobbies(@Valid Hobbies hobbies,BindingResult result,@ModelAttribute("HobbiesCredential")HobbiesCredential hobbycredential,ModelMap map)
	{
		if(result.hasErrors())
		{
			return "Step10Hobbies";
		}
		else
		{
			hobbiesservice.saveHobbies(hobbycredential);
			return "Step11OtherDetails";
		}
	}
	
	@RequestMapping(value="/Hobbies")
	public String HobbiesForm(ModelMap map)
	{
		map.addAttribute("hobbies", new Hobbies());
		return "Step10Hobbies";
	}
}
