package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.StatusCredential;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.StatusService;

@Controller
public class StatusController {

	@Resource
	private StatusService statusservice;
	
	@Resource
	private EventsService eventService;
	@Resource
	private NeedService needservice;
	@Resource
	private CommentService commentservice;
	
	@RequestMapping(value="/Status",method=RequestMethod.POST)
	public String statusupdateform(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("StatusCredential")StatusCredential statuscredential,ModelMap map, String userMail) throws ServletException
	{
		
		HttpSession session = request.getSession(true);
		userMail=(String) session.getAttribute("CurrentEmailId");
		
		statusservice.SaveStatusUpdate(statuscredential);
		
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		return "Home";
	}
	
	@RequestMapping(value="/Status")
	public String HomeForm(Map<String, Object> map)
	{
		
		return "Home";
	}
}
