package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.AstroCredential;
import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.service.AstroService;

@Controller
public class AstroController {
	
	@Resource
	private AstroService astroservice;
	
	@RequestMapping(value="/Astro", method=RequestMethod.POST)
	public String astroForm(@Valid Astro astro,BindingResult result1,@ModelAttribute("AstroCredential")AstroCredential astrocredential,ModelMap map)
	{
		if(result1.hasErrors())
		{
			return "Step7Astro";
		}
		else
		{
		astroservice.saveAstro(astrocredential);
		return "Step8EducationWork";
		}
	}

	@RequestMapping(value="/Astro")
	public String astroFormDetails(ModelMap map) {
		map.addAttribute("astro", new Astro());
		return "Step7Astro";
	}
	
}
