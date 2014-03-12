package com.rbnelite.udyogvishwa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;

@Controller
public class CommentController {
	
	@Resource
	private CommentService commentservice;
	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private ProfileImageService profileImageService;
	@Resource
	private NotificationService notificationService;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private FriendRequestService friendrequestservice;
	
	@RequestMapping(value="/CommentUpdate", method=RequestMethod.POST)
	public String updateComment(HttpServletRequest request,@RequestParam("commenttext")String commenttext, @RequestParam("id")String id,ModelMap map)
	{
		HttpSession session=request.getSession(true);
    	LoginUser loginUser=(LoginUser) session.getAttribute("loginUser");
    	String userMail=loginUser.getEmail();
    	
		commentservice.updateComment(commenttext, id);
		
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
	
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
	
		return "Home";
	}
	
	
	
	@RequestMapping(value="/Comment", method=RequestMethod.POST)
	public String addComment(HttpServletRequest request, @ModelAttribute("CommentCredential")CommentCredential commentcredential,ModelMap map)
	{
		
		HttpSession session=request.getSession(true);
    	LoginUser loginUser=(LoginUser) session.getAttribute("loginUser");
    	String userMail=loginUser.getEmail();
    	
		Integer CommentId=commentservice.saveComment(commentcredential);
				
		notificationService.insertNotification(commentcredential, CommentId);
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
	
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
        map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		return "Home";
	}
	
	@RequestMapping(value="/Comment")
	public String astroFormDetails(Map<String, Object> map) {
		
		return "Home";
	}
}
