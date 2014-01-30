package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.EventsCredential;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.service.EventsService;

@Controller
public class EventsController {

	@Resource
	private EventsService eventsservice;

	@RequestMapping(value = "/Events", method = RequestMethod.POST)
	public String insert(@RequestParam("usermail") String user_name,
			@ModelAttribute("EventsCredential") EventsCredential eventscredential,
			ModelMap map) {

		eventsservice.insertEvents(eventscredential);
		
		listEvents(map);
		return "Events";

	}
	
	
	@RequestMapping("/Events")
	public String listEvents(Map<String, Object> map) {

		map.put("myEvents", new Event());
		map.put("eventstList", eventsservice.listEvents());
			
		return "Events";
	}

	

}
