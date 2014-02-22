package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.LikeStatus;
import com.rbnelite.udyogvishwa.model.Need;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.StatusService;

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
	
	@RequestMapping(value="/LikeStatus",method=RequestMethod.POST)
	public String likeform(@ModelAttribute LikeStatus likeStatus)
	{
		likestatusservice.LikeTheStatus(likeStatus);
		return "Home";
	}
	
	@RequestMapping(value="/LikeStatus")
	public String likeTheForm(Map<String, Object> map)
	{
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myNeeds", new Need());
		map.put("needList", needservice.listNeed());
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		return "Home";
	}
}
