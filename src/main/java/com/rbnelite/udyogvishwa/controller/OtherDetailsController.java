/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.OtherDetailsCredential;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;

/**
 * @author PC3
 *
 */
@Controller
public class OtherDetailsController {
	@Resource
	private OtherDetailsService otherDetailsServ;
	@RequestMapping(value = "/otherDetails", method = RequestMethod.POST)
	public String OtherDetailsMethod(
			@ModelAttribute("OtherDetailsCredential") OtherDetailsCredential OtherCred,
			ModelMap map) {

		otherDetailsServ.insertOtherDetails(OtherCred);

		return "Step11OtherDetails";

	}
	
	@RequestMapping(value="/otherDetails")
	public String FamilyTempMethod(ModelMap m1) {
		return "Step11OtherDetails";
	}
	
}
