package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.StatusCredential;
import com.rbnelite.udyogvishwa.model.Events;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.StatusService;

@Controller
public class StatusController {

	@Resource
	private StatusService statusservice;
	
	@Resource
	private EventsService eventsservice;
	
	@Resource
	private EventsService eventService;
	
	@RequestMapping(value="/Status",method=RequestMethod.POST)
	public String statusupdateform(@ModelAttribute("StatusCredential")StatusCredential statuscredential,ModelMap map)
	{
		statusservice.SaveStatusUpdate(statuscredential);
		
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());
		
		map.put("myEvents", new Events());
		map.put("eventstList", eventsservice.listEvents());
		
		return "Home";
	}
	
	@RequestMapping(value="/Status")
	public String HomeForm(ModelMap map)
	{
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());
		
		map.put("myEvents", new Events());
		map.put("eventstList", eventService.listEvents());
		
		return "Home";
	}
}
