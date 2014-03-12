package com.rbnelite.udyogvishwa.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LikeStatus;
import com.rbnelite.udyogvishwa.model.Need;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class LikeStatusController {

	@Resource
	private LikeStatusService likestatusservice;
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
	private LikeStatusService likeStatusService;
	
	@Resource
	private ProfileImageService profileImageService; 
	
	@RequestMapping(value="/LikeStatus",method=RequestMethod.POST)
	public String likeform(@ModelAttribute LikeStatus likeStatus, Map<String, Object> map){
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		System.out.println("@@@"+userMail);

		likestatusservice.LikeTheStatus(likeStatus);
		
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
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		
		return "Home";
	}
	
	@RequestMapping(value="/LikeStatus")
	public String likeTheForm(Map<String, Object> map)
	{
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myNeeds", new Need());
		map.put("needList", needservice.listNeed());
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		return "Home";
	}
}
