package com.rbnelite.udyogvishwa.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LikeStatus;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class NotificationController {
	
	
	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private LikeStatusService likeStatusService;
	
	@Resource
	private ProfileImageService profileImageService; 
	
	@Resource
	private NotificationService notificationService;

	@RequestMapping(value="/Notification", method=RequestMethod.POST)
	public String seenotification(@RequestParam("notificationId")String notificationId,ModelMap map)
	{
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		/*View perticular status Start here*/
		
		Integer notif=Integer.parseInt(notificationId);
		
		System.out.println("in controller notification");
    	
    	map.put("NotificationStatus", new Status());
		map.put("NotificationStatusList", notificationService.deleteNotification(notif));
		

		
		/*View perticular status End here*/
		
		map.put("status11", new Status());
		List<Status> status = statusservice.listStatus(userMail);
		map.put("statusList", status);
		
		map.put("likeStatus", new LikeStatus());
		map.put("likeStatusList", likeStatusService.listLikeStatus());
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myComment", new Comment());
		List<Comment> comment= commentservice.listComment();
		map.put("commentList", comment);
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
    	
		return "Home";
	}
	
	@RequestMapping(value="/Notificationjsp")
	public String seenotification(ModelMap map)
	{
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
				
		notificationService.changeNotificationStatus(userMail);
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotificationAll(userMail));	
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		return "Notification";
	}
	
}
