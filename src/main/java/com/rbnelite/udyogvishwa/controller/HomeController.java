/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.LikeStatus;
import com.rbnelite.udyogvishwa.model.Need;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

/**
 * @author PC3
 *
 */
@Controller
public class HomeController {
	
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
	
	@RequestMapping(value="/Home")

	public String showHome(HttpServletRequest request, Map<String, Object> map){
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		System.out.println("@@@"+userMail);

		
		map.put("status11", new Status());
		List<Status> status = statusservice.listStatus();
		map.put("statusList", status);
		
		map.put("likeStatus", new LikeStatus());
		map.put("likeStatusList", likeStatusService.listLikeStatus());
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myComment", new Comment());
		List<Comment> comment= commentservice.listComment();
		map.put("commentList", comment);
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		return "Home";

		
	}
}
