package com.rbnelite.udyogvishwa.controller;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.dto.StatusCredential;
import com.rbnelite.udyogvishwa.dto.StatusDTO;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class StatusController {

	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private ProfileImageService profileImageService;
	@Resource
	private FriendRequestService friendrequestservice;
	
	@RequestMapping(value="/Status",method=RequestMethod.POST)
	public String statusupdateform(@ModelAttribute("StatusCredential")StatusCredential statuscredential,ModelMap map) throws ServletException
	{
		
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
    	
		statusservice.SaveStatusUpdate(statuscredential);
		
		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus(userMail));
		
		System.out.println("@@@@"+map.get("statusList"));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		

		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		return "Home";
	}
	
	@RequestMapping(value="/Status")
	public String HomeForm(Map<String, Object> map)
	{
		
		return "Home";
	}
	
	@RequestMapping(value="/updateStatus", method=RequestMethod.POST)
	public @ResponseBody StatusDTO updateStatus(@ModelAttribute StatusDTO statusDto,ModelMap map){
		
		String statusId=""+statusDto.getId();

		statusservice.updateStatus(statusDto.getStatus(), statusId);
		
		return statusDto; 
	}
}
