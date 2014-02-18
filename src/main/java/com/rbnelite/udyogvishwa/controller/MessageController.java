/**
 * 
 */
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

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.dto.MessageDTO;
import com.rbnelite.udyogvishwa.model.Message;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.MessageService;
import com.rbnelite.udyogvishwa.service.NeedService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;

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
	private NeedService needservice;
	@Resource
	private CommentService commentservice;
	@Resource
	private ProfileImageService profileImageService;

	@RequestMapping(value = "/message", method = RequestMethod.POST)
	public String messageMethod(HttpServletRequest request,	HttpServletResponse response, 
			@RequestParam("msgSenderID") String msgSenderID,
			@RequestParam("msgReceiverID") String msgReceiverID,
			@ModelAttribute("MessageDTO") MessageDTO msgdto,
			Map<String, Object> map) {
		
		ObjmsgService.addMessage(msgdto);

		

		map.put("msgConversion", new Message());
		map.put("msgConversionList", ObjmsgService.listMessage(msgSenderID, msgReceiverID));

		map.put("msgFriends", new Message());
		map.put("msgFriendsList", ObjmsgService.listMessagedFriends(msgSenderID));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(msgSenderID));

		return "message";
	}
	
	@RequestMapping(value="/viewConversion", method=RequestMethod.POST)
	public String messageConversion(HttpServletRequest request,	HttpServletResponse response, 
			@RequestParam("msgSenderID") String msgSenderID,
			@RequestParam("msgReceiverID") String msgReceiverID,
			@ModelAttribute("MessageDTO") MessageDTO msgdto,
			Map<String, Object> map) {
		
		map.put("msgConversion", new Message());
		map.put("msgConversionList", ObjmsgService.listMessage(msgSenderID, msgReceiverID));
		
		/***************Friends Profile Image*******************/
		/*map.put("FrndProfileImage", new Message());
		map.put("FrndProfileImageList", profileImageService.getProfileImage(msgReceiverID));*/
		/***************Friends Profile Image*******************/
		
		map.put("msgFriends", new Message());
		map.put("msgFriendsList", ObjmsgService.listMessagedFriends(msgSenderID));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(msgSenderID));
		
		
		return "message";
		
	}

	@RequestMapping(value = "/message")
	public String messageForm(HttpServletRequest request,HttpServletResponse response, ModelMap map) {
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser = (LoginUser) session.getAttribute("loginUser");
		
		String userMail=loginUser.getEmail();
		
		map.put("msgFriends", new Message());
		map.put("msgFriendsList", ObjmsgService.listMessagedFriends(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		return "message";
	}

}
