/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.List;
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
	
	@RequestMapping(value="/Home")
	public String showHome(Map<String, Object> map){
		
		map.put("status11", new Status());
		List<Status> status = statusservice.listStatus();
		map.put("statusList", status);
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		return "Home";
		
	}
}
