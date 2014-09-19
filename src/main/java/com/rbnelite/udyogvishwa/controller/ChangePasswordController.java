package com.rbnelite.udyogvishwa.controller;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.ChangePasswordCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.ChangePassword;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.ChangePasswordService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.utils.RequestContext;


@Controller
public class ChangePasswordController{ 
	
	@Resource
	private EventsService eventService;
	@Resource
	private ChangePasswordService changepassservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private ProfileImageService profileImageService;
	@Resource
	private NotificationService notificationService;
	
	@RequestMapping(value="/ChangePassword",method=RequestMethod.POST)
	public String changePassForm(@ModelAttribute ChangePasswordCredential changepasscred,HttpServletRequest request, ModelMap map)
	{
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		String changePwdMessage="";
		boolean ChPwdFlag=changepassservice.savePassword(changepasscred);
	
		if(ChPwdFlag)
		{
			HttpSession session=request.getSession();
			session.invalidate();
			map.addAttribute("index", new Index());
			changePwdMessage="Password changed. Please LogIn with new password";
			map.put("changePwdMessage", changePwdMessage);
			return "Index";
		}
		else
		{
			changePwdMessage="Old Password is Not Correct...!!!";
			map.put("changePwdMessage", changePwdMessage);
			
			map.addAttribute("changepwd", new ChangePassword());
			
			map.put("ProfileImage", new ProfileImages());
			map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
			
			map.put("myEvents", new Event());
			map.put("eventstList", eventService.listEvents());
				
			map.put("knownPeople", new IntrestAreas());
			Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
			map.put("knownPeopleList", knowPeopleSet);
			
			map.put("friendRequest", new FriendRequest());
			map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
			
			map.put("Notification",new Notification());
			map.put("NotificationList", notificationService.listNotification(userMail));
			
			return "Changepassword";
		}
	}
	
	@RequestMapping(value="/ChangePassword")
	public String getchangePass(ModelMap map)
	{
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		map.addAttribute("changepwd", new ChangePassword());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		return "Changepassword";
	}
	
}