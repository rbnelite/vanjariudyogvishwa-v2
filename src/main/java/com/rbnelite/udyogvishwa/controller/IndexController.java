package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.service.IndexService;

@Controller
public class IndexController {

	@Resource
	private IndexService indexservice;
	
	
	@RequestMapping(value="/Index" ,method=RequestMethod.POST)
	public String registration(@ModelAttribute("IndexCredential")IndexCredential indexcredential,ModelMap map)
	{
		indexservice.saveRegistration(indexcredential);
		return "Index";
	}
	
		@RequestMapping(value="/Index")
		public String indexForm(ModelMap map)
		{
			return "Index";
		}
		
}
