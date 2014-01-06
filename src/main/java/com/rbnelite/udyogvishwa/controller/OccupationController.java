package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.OccupationCredential;
import com.rbnelite.udyogvishwa.service.OcccupationService;

@Controller
public class OccupationController {
	
@Resource
private OcccupationService ocservice;


@RequestMapping(value="/Occupation", method=RequestMethod.POST)
public String insert(@ModelAttribute("OccupationCredential") OccupationCredential occredential,ModelMap map){

	ocservice.insertOccupation(occredential);
	
	return "Step3Occupation";
	
}
@RequestMapping(value="/Occupation")
public String OccupationForm(ModelMap map){

	return "Step3Occupation";
}
}

