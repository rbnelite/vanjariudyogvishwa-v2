package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.HobbiesCredential;
import com.rbnelite.udyogvishwa.model.Hobbies;
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
	
	
	
	
	@RequestMapping(value="/editHobbies", method=RequestMethod.POST)
	public String editHobbies(HttpServletRequest request,HttpServletResponse response, @RequestParam("usermail") String userMail, @ModelAttribute Hobbies hobbies, Map<String, Object> map){
		
		hobbiesservice.UpdateHobbies(hobbies);
		
		return "Profile";
	}
	
	@RequestMapping(value="/Hobbies")
	public String HobbiesForm(ModelMap map)
	{
		return "Step10Hobbies";
	}
}
