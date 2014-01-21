package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.EducationWorkCredential;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.service.EducationWorkService;

@Controller
public class EducationWorkController {
	
@Resource
private EducationWorkService educationWorkService;

@RequestMapping(value="/educationwork", method=RequestMethod.POST)
public String insert(@Valid EducationWork educationwork,BindingResult result,@ModelAttribute("EducationWorkCredential") EducationWorkCredential educationworkcredential,ModelMap map){
	
	if(result.hasErrors()) {
        return "Step8EducationWork";
    }
	else
	{
	educationWorkService.insertEducationWork(educationworkcredential);
	
	return"Step9LifeStyle";
	}
	
}
@RequestMapping(value="/educationwork")
public String OccupationForm(ModelMap map){
	
	map.addAttribute("educationwork", new EducationWork());
	return "Step8EducationWork";
}
}
