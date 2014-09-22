/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.dto.LoginUser;
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
public class ProfileController {

	@Resource
	private OcccupationService ocservice;
	@Resource
	private OtherDetailsService otherDetailsServ;
	@Resource
	private EducationWorkService educationWorkService;
	@Resource
	private HobbiesService hobbiesServ;

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
	
	@Resource
	private ContactService contactServ;
	@Resource
	private RelegionService relegionservice;
	@Resource
	private EventsService eventService;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	
	
	@RequestMapping(value = "/Profile")
	public String ProfileOperation(Map<String, Object> map) throws ServletException {
		
		LoginUser loginUser = RequestContext.getUser();
		
		String userMail = loginUser.getEmail();
		/*userMail=(String) session.getAttribute("loginUser");*/
		
		map.put("occupation", new Occupation());
		map.put("occupationList", ocservice.listOccupation(userMail));

		map.put("educationWORK", new EducationWork());
		map.put("educationworkList", educationWorkService.listEducationWork(userMail));
		
		map.put("contactInfo", new Index());
		map.put("contactInfoList", contactServ.listContact(userMail));
		
		map.put("hobbiesDetails", new Hobbies());
		map.put("hobbiesList", hobbiesServ.listHobbies(userMail));
		
		map.put("religionDetails", new Index());
		map.put("religionList", relegionservice.listReligion(userMail));
		
		map.put("otherDetails", new OtherDetails());
		map.put("otherDetailsList", otherDetailsServ.listOtherDetails(userMail));
		
		
		
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct(userMail));
		
		map.put("intrestAreasDetails", new IntrestAreas());
		map.put("intrestAreasList", intrestAreasService.listIntrestAreas(userMail));
		
		
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
				
		return "Profile";
	}

}
