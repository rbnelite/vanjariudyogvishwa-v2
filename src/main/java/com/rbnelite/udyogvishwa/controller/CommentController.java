package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Need;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.NeedService;
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
	private NeedService needservice;
	
	@RequestMapping(value="/Comment", method=RequestMethod.POST)
	public String addComment(@ModelAttribute("CommentCredential")CommentCredential commentcredential,ModelMap map)
	{
		commentservice.saveComment(commentcredential);
		
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
	
	@RequestMapping(value="/Comment")
	public String astroFormDetails(Map<String, Object> map) {
		
		return "Home";
	}
}
