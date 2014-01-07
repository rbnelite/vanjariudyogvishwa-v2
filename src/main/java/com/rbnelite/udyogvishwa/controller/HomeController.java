/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author PC3
 *
 */
@Controller
public class HomeController {
	
	@RequestMapping(value="/Home")
	public String showHome(){
		return "Home";
		
	}
}
