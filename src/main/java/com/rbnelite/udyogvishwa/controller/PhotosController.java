package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class PhotosController {

	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource
	private ProfileImageService profileImageService;

	@RequestMapping(value = "/Photos")
	public String photoform(Map<String, Object> map) {
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();

		map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus());

		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());

		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		return "Photos";
	}
}
