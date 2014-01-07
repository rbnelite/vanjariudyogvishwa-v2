package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.EducationWorkCredential;
import com.rbnelite.udyogvishwa.service.EducationWorkService;

@Controller
public class EducationWorkController {
	
@Resource
private EducationWorkService educationWorkService;

@RequestMapping(value="/educationwork", method=RequestMethod.POST)
public String insert(@ModelAttribute("EducationWorkCredential") EducationWorkCredential educationworkcredential,ModelMap map){
	
	educationWorkService.insertEducationWork(educationworkcredential);
	
	return"Step8EducationWork";
	
}
@RequestMapping(value="/educationwork")
public String OccupationForm(ModelMap map){

	return "Step8EducationWork";
}
}
