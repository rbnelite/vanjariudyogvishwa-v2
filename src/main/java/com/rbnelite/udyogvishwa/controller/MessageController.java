/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.List;
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
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Message;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.MessageService;
import com.rbnelite.udyogvishwa.service.NeedService;
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
	private FriendRequestService friendrequestservice;
	
	@RequestMapping(value="/message", method=RequestMethod.POST)
	public String messageMethod(@RequestParam("msgSenderID") String msgSenderID,@RequestParam("msgReceiverID") String msgReceiverID, @ModelAttribute("MessageDTO") MessageDTO msgdto,
			Map<String, Object> map,HttpServletRequest request,HttpServletResponse response,String userMail){
		ObjmsgService.addMessage(msgdto);
		
		
		map.put("status11", new Status());
		List<Status> status = statusservice.listStatus();
		map.put("statusList", status);
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		map.put("msgConversion",new Message());
		map.put("msgConversionList", ObjmsgService.listMessage(msgSenderID, msgReceiverID));
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
	
		userMail=loginUser.getEmail();
		
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		return "message";
	}
	
	
	
	
	
	@RequestMapping(value = "/message")
	public String messageForm(ModelMap map,HttpServletRequest request,HttpServletResponse response,String userMail) {
		
		HttpSession session = request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
	
		userMail=loginUser.getEmail();
		
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		return "message";
	}
	
	
	
	}
	
	
	
	
	

