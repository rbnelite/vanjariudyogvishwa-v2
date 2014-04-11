/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.dto.OtherDetailsCredential;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LifeStyle;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;
import com.rbnelite.udyogvishwa.service.LifeStyleService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

/**
 * @author PC3
 *
 */
@Controller
public class OtherDetailsController {
	@Resource
	private OtherDetailsService otherDetailsServ;
	@Resource
	private EducationWorkService educationWorkService;
	@Resource
	private HobbiesService hobbiesServ;
	@Resource
	private LifeStyleService lifeStyleServ;
	@Resource
	private ProductService productservice;
	
	@Resource
	private IntrestAreasService intrestAreasService;
	
	@Resource
	private ProfileImageService profileImageService; 
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private NotificationService notificationService;
	
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
	
	@RequestMapping(value="/editOther", method=RequestMethod.POST)
	public String editOtherDetails(@ModelAttribute OtherDetails otherDetails, Map<String, Object> map){
		
		otherDetailsServ.updateOtherDetails(otherDetails);
		
		LoginUser loginUser = RequestContext.getUser();
		String emailId=loginUser.getEmail();
		
		
		map.put("otherDetails", new OtherDetails());
		map.put("otherDetailsList", otherDetailsServ.listOtherDetails(emailId));
	
		map.put("educationWORK", new EducationWork());
		map.put("educationworkList", educationWorkService.listEducationWork(emailId));
		
		map.put("hobbiesDetails", new Hobbies());
		map.put("hobbiesList", hobbiesServ.listHobbies(emailId));
	
		map.put("lifeStyleDetails", new LifeStyle());
		map.put("LifeStylelist", lifeStyleServ.listLifeStyle(emailId));
		
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct(emailId));
				
		map.put("intrestAreasDetails", new IntrestAreas());
		map.put("intrestAreasList", intrestAreasService.listIntrestAreas(emailId));
				
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(emailId));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(emailId));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(emailId));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(emailId));
		
		return "Profile";
		
	}
	
	@RequestMapping(value="/OtherDetails")
	public String FamilyTempMethod(ModelMap map) {
		map.addAttribute("otherdetails", new OtherDetails ());
		
		return "Step11OtherDetails";
	}
	
}
