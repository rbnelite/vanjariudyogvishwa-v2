package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.EventsCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;

@Controller
public class EventsController {

	@Resource
	private EventsService eventsservice;
	@Resource 
	private FriendRequestService friendrequestservice;

	@RequestMapping(value = "/Events", method = RequestMethod.POST)
	public String insert(@RequestParam("usermail") String user_name,
			@ModelAttribute("EventsCredential") EventsCredential eventscredential,
			ModelMap map,HttpServletRequest request,HttpServletResponse response,String userMail) {
		 
		eventsservice.insertEvents(eventscredential);
		
		listEvents(request, response, userMail, map);
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
	
		userMail=loginUser.getEmail();
		
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		return "Events";

	}
	
	
	@RequestMapping("/Events")
	public String listEvents(HttpServletRequest request,HttpServletResponse response,String userMail,Map<String, Object> map) {

		map.put("myEvents", new Event());
		map.put("eventstList", eventsservice.listEvents());
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
	
		userMail=loginUser.getEmail();
		
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		return "Events";
	}

	

}
