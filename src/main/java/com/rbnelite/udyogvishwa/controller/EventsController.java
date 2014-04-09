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
import com.rbnelite.udyogvishwa.dto.EventsCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.utils.RequestContext;



@Controller
public class EventsController {

	@Resource
	private EventsService eventsservice;

	
	@Resource
	private ProfileImageService profileImageService; 

	@Resource 
	private FriendRequestService friendrequestservice;
	
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private NotificationService notificationService;

	@RequestMapping(value = "/Events", method = RequestMethod.POST)
	public String insert(@Valid Event myEvents, BindingResult result,@RequestParam("usermail") String user_name,
			@ModelAttribute("EventsCredential") EventsCredential eventscredential,
			ModelMap map,String userMail) {
		 if(result.hasErrors())
		 {
			 map.put("myEvents", new Event());
				map.put("eventstList", eventsservice.listEvents());
				
				map.put("ProfileImage", new ProfileImages());
				map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
				
				map.put("friendRequest", new FriendRequest());
				map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
				
				map.put("knownPeople", new IntrestAreas());
				map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
				
				map.put("Notification",new Notification());
				map.put("NotificationList", notificationService.listNotification(userMail));

			
			 	return "Events";
		 }
		 else
		 {
			 
		 eventsservice.insertEvents(eventscredential);
		

		listEvents(userMail, map);
		
		LoginUser loginUser = RequestContext.getUser();
	
		userMail=loginUser.getEmail();
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventsservice.listEvents());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));

		return "Events";
		 }
	}
	
	
	@RequestMapping("/Events")
	public String listEvents(String userMail,Map<String, Object> map) {

		 
		
		LoginUser loginUser = RequestContext.getUser();
	
		userMail=loginUser.getEmail();
		
		map.put("myEvents1", new Event());
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventsservice.listEvents());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));

		return "Events";
	}

	

}
