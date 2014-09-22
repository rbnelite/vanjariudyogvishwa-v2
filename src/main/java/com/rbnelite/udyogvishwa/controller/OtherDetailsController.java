/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

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
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.ContactService;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.OcccupationService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.RelegionService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

/**
 * @author PC3
 *
 */
@Controller
public class OtherDetailsController {
	
	@Resource
	private OcccupationService ocservice;
	@Resource
	private EducationWorkService educationWorkService;
	@Resource
	private ContactService contactServ;
	@Resource
	private HobbiesService hobbiesServ;
	@Resource
	private RelegionService relegionservice;
	@Resource
	private OtherDetailsService otherDetailsServ;
	
	@Resource
	private ProductService productservice;
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private IntrestAreasService intrestAreasService;
	
	@Resource
	private ProfileImageService profileImageService; 
	@Resource
	private NotificationService notificationService;
	@Resource
	private EventsService eventService;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	
	@RequestMapping(value = "/OtherDetails", method = RequestMethod.POST)
	public String OtherDetailsMethod(@Valid OtherDetails otherdetails, BindingResult result, @RequestParam("usermail") String emailId,
			@ModelAttribute("OtherDetailsCredential") OtherDetailsCredential OtherCred,
			ModelMap map) 
	{
		 if(result.hasErrors()) 
		 {
			 map.addAttribute("otherdetails", new OtherDetails ()); 
			 map.put("HobbiesStatus", true);
			 System.out.println("from Other Details Controller errorOccured while saving data...");
	            return "Registration";
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
		
		map.put("occupation", new Occupation());
		map.put("occupationList", ocservice.listOccupation(emailId));
		
		map.put("educationWORK", new EducationWork());
		map.put("educationworkList", educationWorkService.listEducationWork(emailId));
		
		map.put("contactInfo", new Index());
		map.put("contactInfoList", contactServ.listContact(emailId));
		
		map.put("hobbiesDetails", new Hobbies());
		map.put("hobbiesList", hobbiesServ.listHobbies(emailId));
		
		map.put("religionDetails", new Index());
		map.put("religionList", relegionservice.listReligion(emailId));
		
		map.put("otherDetails", new OtherDetails());
		map.put("otherDetailsList", otherDetailsServ.listOtherDetails(emailId));
		
		
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct(emailId));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(emailId));
				
		map.put("intrestAreasDetails", new IntrestAreas());
		map.put("intrestAreasList", intrestAreasService.listIntrestAreas(emailId));
		
				
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(emailId));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(emailId));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(emailId));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(emailId));
		map.put("knownPeopleList", knowPeopleSet);
		
		return "Profile";
		
	}
}
