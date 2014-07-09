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

import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LifeStyle;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Religion;
import com.rbnelite.udyogvishwa.service.ContactService;
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

@Controller
public class ContactController {

	@Resource
	private ContactService contactservice;
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

	@RequestMapping(value = "/Contact", method = RequestMethod.POST)
	public String contact(
			@Valid Contact contact,
			BindingResult result,
			@RequestParam("userMail") String emailId,
			@ModelAttribute("ContactCredential") ContactCredential contactcredential,
			ModelMap map) {
		if (result.hasErrors()) {
			map.put("OccupationStatus", true);
			map.addAttribute("contact", new Contact());
			return "Registration";

		}

		else {
			contactservice.SaveContact(contactcredential);
			map.put("ContactStatus", true);
			map.put("CurrentEmailId", emailId);
			map.addAttribute("religion", new Religion());
			return "Registration";
		}

	}
	
	
	@RequestMapping(value="/editContact", method=RequestMethod.POST)
	public String editContact(@ModelAttribute Contact contact, Map<String, Object> map)
	{
			
		LoginUser loginUser = RequestContext.getUser();
		String emailId=loginUser.getEmail();
		
		contactservice.UpdateContact(contact);
		
		map.put("contactInfo", new Index());
		map.put("contactInfoList", contactservice.listContact(emailId));
		
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
		
		
		return "Profile";
	}

	@RequestMapping(value = "/Contact")
	public String contactForm(ModelMap map) {
		map.addAttribute("contact", new Contact());
		return "Step4Contact";
	}

}
