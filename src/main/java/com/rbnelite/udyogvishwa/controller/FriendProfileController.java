package com.rbnelite.udyogvishwa.controller;



import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LifeStyle;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.service.AstroService;
import com.rbnelite.udyogvishwa.service.ContactService;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;
import com.rbnelite.udyogvishwa.service.LifeStyleService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.ProductService;

@Controller
public class FriendProfileController {

	/*@Resource 
	private FriendProfileService friendprofileservice;*/
	
	/*@RequestMapping(value="/FriendProfile",method="RequestMethod.POST")
	public string  insert(@ModelAttribute("FriendProfileCredential")FriendProfileCredential friendprofilecredential,ModelMap map){
	
		friendprofileservice.insertFriendProfile(friendprofilecredential)
		{
			return " ";
		}
	
	}
	*/
	
	@Resource
	private IntrestAreasService intrestAreasService;
	
	@Resource
	private ProductService productservice;
	
	@Resource
	private EducationWorkService educationWorkService;
	
	@Resource
	private OtherDetailsService otherDetailsService;
	
	@Resource
	private HobbiesService hobbiesservice;
	
	@Resource
	private LifeStyleService lifestyleservice;
	
	/*@Resource
	private AstroService astroservice;*/
	
	@Resource
	private ContactService contactservice;
	
	@RequestMapping(value="/FriendProfile")
	public String showFriendProfile(ModelMap map){
		return "FriendProfile";
	} 
	
	@RequestMapping(value="/FriendProfile", method=RequestMethod.POST)
	public String FriendForm(@RequestParam("friendsEmailId")String userMail, ModelMap map){
		
	map.put("FriendsotherDetailsList", new OtherDetails());
	map.put("FriendsotherDetailsList", otherDetailsService.listOtherDetails(userMail));	
 
	map.put("FriendseducationWORK", new EducationWork());
	map.put("FriendseducationworkList", educationWorkService.listEducationWork(userMail));

	map.put("FriendshobbiesDetails", new Hobbies());
	map.put("FriendshobbiesList", hobbiesservice.listHobbies(userMail));

	/*map.put("FriendsastroDetails", new Astro());
	map.put("FriendsastroList", astroservice.listAstro(userMail));*/
	
	map.put("FriendslifeStyleDetails", new LifeStyle());
	map.put("FriendsLifeStylelist", lifestyleservice.listLifeStyle(userMail));
	
	map.put("FriendsproductNAME", new Product());
	map.put("FriendsProductList", productservice.listProduct(userMail));
	
	map.put("FriendsintrestAreasDetails", new IntrestAreas());
	map.put("FriendsintrestAreasList", intrestAreasService.listIntrestAreas(userMail));
	
	
	return "FriendProfile";

}
}