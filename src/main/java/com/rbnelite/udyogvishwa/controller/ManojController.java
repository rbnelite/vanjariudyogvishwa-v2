/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.ManojCredential;
import com.rbnelite.udyogvishwa.model.Manoj;
import com.rbnelite.udyogvishwa.service.ManojService;

/**
 * @author PC3/Manoj Manikrao Sawant.
 * 
 */
@Controller
public class ManojController {

	@Resource
	private ManojService ObjManService;

	@RequestMapping(value = "/manoj", method = RequestMethod.POST)
	public String ManojMethod(
			@ModelAttribute("ManojCredential") ManojCredential ObjManojCred,
			ModelMap map) {
		ObjManService.insertManoj(ObjManojCred);

		return "manoj";

	}
	
	@RequestMapping("/manoj")
	public String listManoj(Map<String, Object> map) {

		map.put("contact", new Manoj());
		System.out.println("&&&&&"+map.size());
		
		map.put("contactList", ObjManService.listManoj());
		String s1="contact";
		System.out.println("$$$$$"+map.get(s1));
		
//		System.out.println("@-@"+ObjManService.listManoj().size()+"@@@@@@@");
		

		return "manoj";
	}
	
	@RequestMapping
	public String manojTempMethod(ModelMap m1){
		return "manoj";
	}

}
