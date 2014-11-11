
package com.rbnelite.udyogvishwa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VUVExceptionController{

	@RequestMapping(value="/error404")
	public String getError404(ModelMap map){
		
		return "error404";
	}
	
	@RequestMapping(value="/error500")
	public String getError500(ModelMap map){
		
		return "error500";
	}
}
