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

import com.rbnelite.udyogvishwa.dto.FamilyCredential;
import com.rbnelite.udyogvishwa.service.FamilyService;

/**
 * @author PC3
 * 
 */
@Controller
public class FamilyController {

	@Resource
	private FamilyService familyServ;

	@RequestMapping(value = "/Family", method = RequestMethod.POST)
	public String FamilyMethod(
			@ModelAttribute("FamilyCredential") FamilyCredential familyCred,
			ModelMap map) {

		familyServ.insertFamily(familyCred);

		return "Step6Family";

	}

	@RequestMapping(value="/Family")
	public String FamilyTempMethod(ModelMap m1) {
		return "Step6Family";
	}

}
