package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;

import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;

import com.rbnelite.udyogvishwa.service.StatusService;

@Controller
public class PhotosController {

	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;

	@RequestMapping(value = "/Photos")
	public String photoform(Map<String, Object> map) {

		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());

		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());

		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		return "Photos";
	}
}
