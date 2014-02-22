/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

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
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;

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
	
	
	@RequestMapping(value="/sendFriendRequest", method=RequestMethod.POST)
	public String sendFriendRequest(@ModelAttribute("FriendRequestCredential") FriendRequestCredential friendRequestCredential, Map<String, Object> map){
		
		friendrequestservice.sendFriendRequest(friendRequestCredential);
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		return "Friendlist";
	}
	
	@RequestMapping(value="/acceptFriendRequest",method=RequestMethod.POST)
	public String acceptRequest(@ModelAttribute("FriendRequestCredential") FriendRequestCredential friendRequestCredential,Map<String, Object>map,@RequestParam("status")String status)
	{
		friendrequestservice.acceptFriendRequest(friendRequestCredential,status);
		return "Friendlist";
	}
	
	@RequestMapping(value="/FriendList")
	public String showHome(HttpServletRequest request,HttpServletResponse response,Map<String, Object> map,String userMail)throws ServletException{
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
	
		userMail=loginUser.getEmail();
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		return "Friendlist";
		
	}
}
