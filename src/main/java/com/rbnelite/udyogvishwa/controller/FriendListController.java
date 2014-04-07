/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.FriendRequestCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
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
import com.rbnelite.udyogvishwa.service.NeedService;
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
	private NeedService needservice;
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
	public String sendFriendRequest(@ModelAttribute("FriendRequestCredential") FriendRequestCredential friendRequestCredential,@RequestParam("JspPageName") String JspPageName, Map<String, Object> map){
		
		friendrequestservice.sendFriendRequest(friendRequestCredential);
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(userMail));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		map.put("status11", new Status());
		List<Status> status = statusservice.listStatus(userMail);
		map.put("statusList", status);
				
		map.put("likeStatus", new LikeStatus());
		List<LikeStatus> likeStatusList=likeStatusService.listLikeStatus();
		map.put("likeStatusList", likeStatusList);
		
		return JspPageName;
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
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(userMail));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		return "Friendlist";
		
	}
}
