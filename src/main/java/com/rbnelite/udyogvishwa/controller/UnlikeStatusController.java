package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Need;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.service.UnlikeStatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class UnlikeStatusController {

	@Resource
	private UnlikeStatusService unlikestatusservice;
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
	private FriendRequestService friendrequestservice;
	
	@RequestMapping(value="/UnlikeStatus",method=RequestMethod.POST)
	public String unlikeform()
	{
		unlikestatusservice.unlikeTheStatus();
		return "Home";
	}
	
	@RequestMapping(value="/UnlikeStatus")
	public String unlikeTheForm(Map<String, Object> map)
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
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		return "Home";
	}
}
