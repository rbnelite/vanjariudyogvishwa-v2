package com.rbnelite.udyogvishwa.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.ChangePasswordCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.ChangePassword;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.ChangePasswordService;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.StatusService;


@Controller
public class ChangePasswordController{ 
	
	@Resource
	private EventsService eventService;
	@Resource
	private ChangePasswordService changepassservice;
	@Resource
	private StatusService statusservice;
	@Resource
	private CommentService commentservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private FriendRequestService friendrequestservice;
	
	@RequestMapping(value="/ChangePassword",method=RequestMethod.POST)
	public String changepassform1(@Valid ChangePassword changepwd,BindingResult res,@ModelAttribute("ChangePasswordCredential")ChangePasswordCredential changepasscred,ModelMap map,HttpServletRequest request,HttpServletResponse response,String userMail)
	{
		if(res.hasErrors())
		{
			map.addAttribute("changepwd", new ChangePassword());
			return "Changepassword";	
		}
		else
		changepassservice.savePassword(changepasscred);
		
		map.put("status11", new Status());
		List<Status> status = statusservice.listStatus();
		map.put("statusList", status);
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myComment", new Comment());
		List<Comment> comment= commentservice.listComment();
		map.put("commentList", comment);
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow());
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
	
		userMail=loginUser.getEmail();
		
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		return "Home";
	}
	
	@RequestMapping(value="/ChangePassword")
	public String changepassform2(ModelMap map)
	{
		map.addAttribute("changepwd", new ChangePassword());
		return "Changepassword";
	}
	
}
	


