package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.NeedCredential;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Need;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.StatusService;

@Controller
public class NeedController {
	
@Resource
private StatusService statusservice;

@Resource
private EventsService eventService;
@Resource
private NeedService needservice;
@Resource
private CommentService commentservice;

@RequestMapping(value="/Need",method=RequestMethod.POST)
public String insert (@ModelAttribute("NeedCredential") NeedCredential needcredential,ModelMap map){
	
	needservice.insertNeed(needcredential);
	map.put("status11", new Status());
	map.put("statusList", statusservice.listStatus());
	
	map.put("myEvents", new Event());
	map.put("eventstList", eventService.listEvents());
	
	map.put("myNeeds", new Need());
	map.put("needList", needservice.listNeed());
	
	map.put("myComment", new Comment());
	map.put("commentList", commentservice.listComment());
	
	return"Home";
}
@RequestMapping (value="/Need")
public String needFORM(ModelMap map){
    return"Home";
}
}
