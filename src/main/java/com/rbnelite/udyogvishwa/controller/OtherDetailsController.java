/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.OtherDetailsCredential;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;

/**
 * @author PC3
 *
 */
@Controller
public class OtherDetailsController {
	@Resource
	private OtherDetailsService otherDetailsServ;
	@RequestMapping(value = "/OtherDetails", method = RequestMethod.POST)
	public String OtherDetailsMethod(@Valid OtherDetails otherdetails, BindingResult result, @RequestParam("usermail") String emailId,
			@ModelAttribute("OtherDetailsCredential") OtherDetailsCredential OtherCred,
			ModelMap map) 
	{
		 if(result.hasErrors()) 
		 {
			 
			 System.out.println("me hushar aahe");
	            return "Step11OtherDetails";
	     }
		 else
		 {	 
		otherDetailsServ.insertOtherDetails(OtherCred);
		map.put("CurrentEmailId", emailId);

		return "ThankYou";
		 }
	}
	
	@RequestMapping(value="/OtherDetails")
	public String FamilyTempMethod(ModelMap map) {
		map.addAttribute("otherdetails", new OtherDetails ());
		
		return "Step11OtherDetails";
	}
	
}
