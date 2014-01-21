/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.LifeStyle;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;


import com.rbnelite.udyogvishwa.service.AstroService;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.LifeStyleService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.ProductService;


/**
 * @author PC3
 *
 */
@Controller
public class ProfileController {
	
		
	
	
	@Resource
	private OtherDetailsService otherDetailsServ;
	@Resource
	private EducationWorkService educationWorkService;
	
	@Resource
	private HobbiesService hobbiesServ;
	@Resource
	private AstroService astroServ;

	@Resource
	private LifeStyleService lifeStyleServ;
	@Resource
	private ProductService productservice;
	
	
	@RequestMapping(value="/Profile")
	public String ProfileOperation(Map<String, Object> map){
		
		
		
		if(!map.containsKey("EditOtherDetails"))
		{
		map.put("otherDetails", new OtherDetails());
		map.put("otherDetailsList", otherDetailsServ.listOtherDetails());
		System.out.println("&&&&&-2"+map.size());
		}
		
		
	
		
		map.put("hobbiesDetails", new Hobbies());
		map.put("hobbiesList", hobbiesServ.listHobbies());
		
		map.put("astroDetails", new Astro());
		map.put("astroList", astroServ.listAstro());
		
		map.put("lifeStyleDetails", new LifeStyle());
		map.put("LifeStylelist", lifeStyleServ.listLifeStyle());
		
		map.put("productNAME", new Product());

		map.put("ProductList", productservice.listProduct());
		
		return "Profile";
	}
	
	@RequestMapping(value="/EditOtherDetails")
	public String EditOtherdetails(Map<String, Object> map) {
		
		map.put("EditOtherDetails", new OtherDetails());
		map.put("EditOtherDetailsList", otherDetailsServ.listOtherDetails());
		ProfileOperation(map);
		
		return "Profile";
			
	}
	
	
}
