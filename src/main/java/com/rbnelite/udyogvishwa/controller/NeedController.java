package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.NeedCredential;
import com.rbnelite.udyogvishwa.service.NeedService;

@Controller
public class NeedController {
	
@Resource
private NeedService needService;

@RequestMapping(value="/Need",method=RequestMethod.POST)
public String insert (@ModelAttribute("NeedCredential") NeedCredential needcredential,ModelMap map){
	
	needService.insertNeed(needcredential);
	
	return"Home";
}
@RequestMapping (value="/Need")
public String needFORM(ModelMap map){
 
    return"Home";
}
}


