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

import com.rbnelite.udyogvishwa.dto.OccupationCredential;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.service.OcccupationService;

@Controller
public class OccupationController {
	
@Resource
private OcccupationService ocservice;


@RequestMapping(value="/Occupation", method=RequestMethod.POST)
public String insert(@Valid Occupation occupation, BindingResult result,@RequestParam("usermail") String emailId, @ModelAttribute("OccupationCredential") OccupationCredential occredential,ModelMap map){

	if(result.hasErrors())
	{
	return "Step3Occupation";	
	}
	else
	{
	ocservice.insertOccupation(occredential);
	map.put("CurrentEmailId", emailId);
	
	return "Step7Astro";
	}
	
}
@RequestMapping(value="/Occupation")
public String OccupationForm(ModelMap map){
	map.addAttribute("occupation", new Occupation());
	return "Step3Occupation";
}
}

