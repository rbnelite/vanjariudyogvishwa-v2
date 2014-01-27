/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.EducationWork;
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

	@RequestMapping(value = "/Profile")
	public String ProfileOperation(Map<String, Object> map) {
		
		String userMail=(String) map.get("CurrentEmailId");
		
		System.out.println("% % % % % % % % % % % %"+userMail);

		if (!map.containsKey("EditOtherDetails")) {
			map.put("otherDetails", new OtherDetails());
			map.put("otherDetailsList", otherDetailsServ.listOtherDetails());
			System.out.println("&&&&&-2" + map.size());
		}
		if (!map.containsKey("EditEducationDetails")) {
			map.put("educationWORK", new EducationWork());
			map.put("educationworkList", educationWorkService.listEducationWork());
		}
		
		if (!map.containsKey("editHobbiesDetails")) {
		map.put("hobbiesDetails", new Hobbies());
		map.put("hobbiesList", hobbiesServ.listHobbies());
		}
		
		if (!map.containsKey("editAstroDetails")) {
		map.put("astroDetails", new Astro());
		map.put("astroList", astroServ.listAstro());
		}
		
		if (!map.containsKey("editLifeStyleDetails")) {
		map.put("lifeStyleDetails", new LifeStyle());
		map.put("LifeStylelist", lifeStyleServ.listLifeStyle());
		}
		
		if (!map.containsKey("editProductDetails")) {
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct());
		}
		return "Profile";
	}

	@RequestMapping(value = "/EditOtherDetails")
	public String editOtherDetails(Map<String, Object> map) {

		map.put("EditOtherDetails", new OtherDetails());
		map.put("EditOtherDetailsList", otherDetailsServ.listOtherDetails());
		ProfileOperation(map);

		return "Profile";

	}
	
	@RequestMapping(value = "/EditEducationDetails")
	public String editEducationDetails(Map<String, Object> map) {

		map.put("EditEducationDetails", new EducationWork());
		map.put("EditEducationDetailsList", educationWorkService.listEducationWork());
		ProfileOperation(map);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditHobbiesDetails")
	public String editHobbiesDetails(Map<String, Object> map) {

		map.put("editHobbiesDetails", new Hobbies());
		map.put("editHobbiesList", hobbiesServ.listHobbies());
		ProfileOperation(map);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditAstroDetails")
	public String editAstroDetails(Map<String, Object> map) {

		map.put("editAstroDetails", new Astro());
		map.put("editAstroList", astroServ.listAstro());
		ProfileOperation(map);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditLifeStyleDetails")
	public String editLifeStyle(Map<String, Object> map) {

		map.put("editLifeStyleDetails", new LifeStyle());
		map.put("editLifeStyleList", lifeStyleServ.listLifeStyle());
		ProfileOperation(map);
		return "Profile";
	}
	
	
	@RequestMapping(value = "/EditProductDetails")
	public String editProductDetails(Map<String, Object> map) {

		map.put("editProductDetails", new Product());
		map.put("editProductList", productservice.listProduct());
		ProfileOperation(map);
		return "Profile";
	}

}
