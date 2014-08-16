package com.rbnelite.udyogvishwa.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.ServletException;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LikeStatus;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.IndexService;
import com.rbnelite.udyogvishwa.service.LikeStatusService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.Constants;

@Controller
public class IndexController {

	@Resource
	private IndexService indexservice;
	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource
	private ProfileImageService profileImageService;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private NotificationService notificationService;
	@Resource
	private LikeStatusService likeStatusService;
	@Resource
	private FriendRequestService friendrequestservice;

	@RequestMapping(value = "/Index", method = RequestMethod.POST)
	public String registration(@Valid Index index, BindingResult result,
			@RequestParam("emailId") String emailId,
			@ModelAttribute("IndexCredential") IndexCredential indexcredential,
			HttpServletRequest request,ModelMap map) {
		if (result.hasErrors()) {
			return "Index";
		} else {
			indexservice.saveRegistration(indexcredential);
			
			/***********For Profile Image Default**********/
			String fileName="DefaultProfileImg.png";
			profileImageService.insertProfileImage(fileName, emailId);
			
			/***********For Profile Image Default**********/
			
			LoginUser loginUser = new LoginUser();
			loginUser.setEmail(emailId);
			loginUser.setFirstName(indexcredential.getFirstName());
			loginUser.setLastName(indexcredential.getLastName());
			map.put("loginUser", loginUser);
			request.getSession().setAttribute(Constants.LOGGEDIN_USER,
					loginUser);
			
			map.put("CurrentEmailId", emailId);
			map.addAttribute("occupation", new Occupation());
			map.put("IndexStatus", true);
			return "Registration";
		}
	}

	@RequestMapping(value = "/loginAuthentication", method = RequestMethod.POST)
	public String initLogin(@RequestParam("user_name") String userName,
			@RequestParam("password") String passWord,
			HttpServletRequest request, ModelMap map) {

		List<Index> tempLoginUserList = indexservice.loginAuthintication(
				userName, passWord);
		if (!tempLoginUserList.isEmpty()) {
			Index index = tempLoginUserList.get(0);
			LoginUser loginUser = new LoginUser();
			loginUser.setEmail(index.getEmailId());
			loginUser.setFirstName(index.getFirstName());
			loginUser.setId(index.getId());
			loginUser.setLastName(index.getLastName());

			/*map.put("loginUser", loginUser);*/
			request.getSession().setAttribute(Constants.LOGGEDIN_USER,
					loginUser);

			//map.put("CurrentEmailId", userName);

			map.put("status11", new Status());
			List<Status> status = statusservice.listStatus(loginUser.getEmail());
		/*	for(Status status : statusList ) {
				for(Comment comment : status.getComments()) {
					System.out.println(comment.getUser().getDisplayName());
				}
			}*/
			map.put("statusList", status);
			
			map.put("likeStatus", new LikeStatus());
			List<LikeStatus> likeStatusList=likeStatusService.listLikeStatus();
			map.put("likeStatusList", likeStatusList);

			map.put("myEvents", new Event());
			map.put("eventstList", eventService.listEvents());

			map.put("myComment", new Comment());
			map.put("commentList", commentservice.listComment());
			
			map.put("friendRequest", new FriendRequest());
			map.put("friendRequestList", friendrequestservice.listFriendRequest(userName));
			
			map.put("ProfileImage", new ProfileImages());
			map.put("ProfileImageList", profileImageService.getProfileImage(userName));

			map.put("knownPeople", new IntrestAreas());
			Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userName));
			map.put("knownPeopleList", knowPeopleSet);
			/*View perticular status Start here*/
			map.put("Notification",new Notification());
			map.put("NotificationList", notificationService.listNotification(loginUser.getEmail()));
			/*View perticular status End here*/
			return "Home";
		
		} else {
			map.addAttribute("index", new Index());
			map.put("LoginError", "Invalid Combination of User Name and password !");
			return "Index";
		}

	}

	@RequestMapping(value = "/logoutUser")
	public String logOutOperation(HttpServletRequest request,
			HttpServletResponse response, ModelMap map) throws ServletException {

		HttpSession session = request.getSession();
		LoginUser loginUser=(LoginUser) session.getAttribute("loginUser");
    	String userMail=loginUser.getEmail();
		notificationService.changeNotificationStatus(userMail);
		
		session.invalidate();
		// session.setAttribute("CurrentEmailId", null);
		map.addAttribute("index", new Index());
		map.put("LogOutMsg", "You are Loged Out Successfully !");

		return "Index";

	}

	@RequestMapping({"/Index", "/"})
	public String indexForm(ModelMap map) {
		map.addAttribute("index", new Index());
		return "Index";
	}
	
}
