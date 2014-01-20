package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;

import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;

import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.service.UnlikeStatusService;

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
	private CommentService commentservice;
	
	@RequestMapping(value="/UnlikeStatus",method=RequestMethod.POST)
	public String unlikeform()
	{
		unlikestatusservice.unlikeTheStatus();
		return "Home";
	}
	
	@RequestMapping(value="/UnlikeStatus")
	public String unlikeTheForm(Map<String, Object> map)
	{
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
	
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		return "Home";
	}
}
