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
import org.springframework.web.bind.annotation.RequestMapping;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.StatusService;

/**
 * @author PC3
 *
 */
@Controller
public class HomeController {
	
	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private FriendRequestService friendrequestservice;
	
	
	@RequestMapping(value="/Home")
	public String showHome(HttpServletRequest request,HttpServletResponse response,String userMail,Map<String, Object> map){
		
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
}
