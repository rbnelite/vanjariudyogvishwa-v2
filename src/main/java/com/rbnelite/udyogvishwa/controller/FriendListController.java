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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rbnelite.udyogvishwa.dto.FriendRequestCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

/**
 * @author PC3
 *
 */
@Controller
public class FriendListController {
	
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
	private ProfileImageService profileImageService;
	@Resource
	private NotificationService notificationService;
	@Resource
	private LikeStatusService likeStatusService;
	
	@RequestMapping(value="/sendFriendRequest", method=RequestMethod.POST)
	public @ResponseBody FriendRequestCredential sendFriendRequest(@ModelAttribute FriendRequestCredential friendRequestCredential,ModelMap map){
		
		
		friendrequestservice.sendFriendRequest(friendRequestCredential);
		
		return friendRequestCredential;
	}
	
	@RequestMapping(value="/acceptFriendRequest",method=RequestMethod.POST)
	public String acceptRequest(@ModelAttribute("FriendRequestCredential") FriendRequestCredential friendRequestCredential,Map<String, Object>map,@RequestParam("status")String status)
	{
		friendrequestservice.acceptFriendRequest(friendRequestCredential,status);
		return "Friendlist";
	}
	
	@RequestMapping(value="/FriendList")
	public String showHome(Map<String, Object> map)throws ServletException{
		
		LoginUser loginUser = RequestContext.getUser();
	
		String userMail=loginUser.getEmail();
		System.out.println(123123+"$$$$");
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
		
		System.out.println("From Friend List Controller My friends List contains: "+friendrequestservice.listFriends(userMail).size());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		return "Friendlist";
		
	}
}
