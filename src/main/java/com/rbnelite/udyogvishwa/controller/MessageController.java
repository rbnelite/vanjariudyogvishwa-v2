/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.dto.MessageDTO;


import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Message;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.MessageService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

/**
 * @author PC3
 * 
 */
@Controller
public class MessageController {

	@Resource
	private MessageService ObjmsgService;

	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource 
	private FriendRequestService friendrequestservice;
	@Resource
	private ProfileImageService profileImageService;
	@Resource
	private NotificationService notificationService;

	@RequestMapping(value = "/message", method = RequestMethod.POST)
	public String messageMethod(@RequestParam("msgSenderID") String msgSenderID,
			@RequestParam("msgReceiverID") String msgReceiverID,
			@ModelAttribute("MessageDTO") MessageDTO msgdto,
			Map<String, Object> map) {
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		String s1[]=msgReceiverID.split("'");
		System.out.println(s1.length+"333333");
		if(s1.length!=0){
			System.out.println(s1[1]+"&&&&&&&&&&&&&");
		}
		
		ObjmsgService.addMessage(msgdto,s1[1]);
		map.put("ProfileImageMsgFrnd", new ProfileImages());
		map.put("ProfileImageListMsgFrnd", profileImageService.getProfileImage(s1[1]));
		
		map.put("msgConversionFrndName", msgReceiverID);

		map.put("msgConversion", new Message());
		map.put("msgConversionList", ObjmsgService.listMessage(msgSenderID, s1[1]));

		map.put("msgFriends", new Message());
		map.put("msgFriendsList", ObjmsgService.listMessagedFriends(msgSenderID));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(msgSenderID));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

		return "message";
	}
	
	@RequestMapping(value="/viewConversion", method=RequestMethod.POST)
	public String messageConversion(@RequestParam("msgSenderID") String msgSenderID,
			@RequestParam("msgReceiverID") String msgReceiverID,
			@ModelAttribute("MessageDTO") MessageDTO msgdto,
			Map<String, Object> map) {
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		
		String s1[]=msgReceiverID.split("'");
		System.out.println(s1.length+"333333");
		if(s1.length!=0){
			System.out.println(s1[1]+"444444");
		}
		
		map.put("msgConversion", new Message());
		map.put("msgConversionList", ObjmsgService.listMessage(msgSenderID, s1[1]));
		
		map.put("ProfileImageMsgFrnd", new ProfileImages());
		map.put("ProfileImageListMsgFrnd", profileImageService.getProfileImage(s1[1]));
		
		map.put("msgFriends", new Message());
		map.put("msgFriendsList", ObjmsgService.listMessagedFriends(msgSenderID));
		
		map.put("msgConversionFrndName", msgReceiverID);
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(msgSenderID));
	
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		return "message";
		
	}

	@RequestMapping(value = "/message")
	public String messageForm(ModelMap map) {
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		map.put("msgFriends", new Message());
		map.put("msgFriendsList", ObjmsgService.listMessagedFriends(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		

		return "message";
	}

}
