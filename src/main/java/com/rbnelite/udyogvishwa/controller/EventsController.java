package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;

@Controller
public class EventsController {

	@Resource
	private EventsService eventsservice;
	
	@Resource
	private ProfileImageService profileImageService; 

	@RequestMapping(value = "/Events", method = RequestMethod.POST)
	public String insert(HttpServletRequest request,@RequestParam("usermail") String user_name,
			@ModelAttribute("EventsCredential") EventsCredential eventscredential,
			ModelMap map) {
		 
		System.out.println("From Insert Events "+map.get("CurrentEmailId"));
		eventsservice.insertEvents(eventscredential);
		
		listEvents(request, map);
		return "Events";

	}
	
	
	@RequestMapping("/Events")
	public String listEvents(HttpServletRequest request, Map<String, Object> map) {
		
		HttpSession session=request.getSession(true);
		LoginUser loginUser=(LoginUser) session.getAttribute("loginUser"); 
		String userMail=loginUser.getEmail();
		System.out.println("@@@"+userMail);
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventsservice.listEvents());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
			
		return "Events";
	}

	

}
