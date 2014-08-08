package com.rbnelite.udyogvishwa.controller;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.Photos;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.PhotosService;
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
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private PhotosService photoservice;
	@Resource
	private NotificationService notificationService;
	@Resource
	private FriendRequestService friendrequestservice;
	
	private String saveDirectory = "F:/team/Manoj/project/vanjariudyogvishwa-v2/webapp/resources/mytheme/photos/";
	
	@RequestMapping(value = "/Photos")
	public String photoform(HttpServletRequest request, Map<String, Object> map) {
		
		HttpSession session=request.getSession(true);
		LoginUser loginUser=(LoginUser)session.getAttribute("loginUser");
		String userMail=loginUser.getEmail();

		/*map.put("status11", new Status());
		map.put("statusList", statusservice.listStatus(userMail));*/

		

		/*map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());*/
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
		map.put("knownPeopleList", knowPeopleSet);
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("userPhotos", new Photos());
		map.put("userPhotosList", photoservice.ShowPhotos(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		return "Photos";
	}
	
	@RequestMapping(value = "/AddPhotos", method = RequestMethod.POST)
	public String insertProduct(HttpServletRequest request,@RequestParam CommonsMultipartFile[] photoPath, 
			@RequestParam ("photoTitle") String pTitle,@RequestParam ("photoDescription") String pDesc,  ModelMap map) throws Exception {
  
    LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
	
		 HttpSession session=request.getSession(true);
				if (photoPath != null && photoPath.length > 0) {
            for (CommonsMultipartFile aFile : photoPath){
            
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                 
                if (!aFile.getOriginalFilename().equals("")) {
                	
                	DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd HHmmss");
            		Date date = new Date();
            		String fileName="RBNelitePhoto"+dateFormat.format(date);
            		        		
                	 aFile.transferTo(new File(saveDirectory + fileName));
                	
                	 
                	
                	 photoservice.addPhoto(userMail,fileName,pTitle,pDesc);
                	 
                }
                
            }
        }
				map.put("userPhotos", new Photos());
				map.put("userPhotosList", photoservice.ShowPhotos(userMail));
				
				map.put("knownPeople", new IntrestAreas());
				Set<IntrestAreas> knowPeopleSet = new HashSet<IntrestAreas>(peoplerefservice.peopleYouMayKnow(userMail));
				map.put("knownPeopleList", knowPeopleSet);
				
				map.put("myEvents", new Event());
				map.put("eventstList", eventService.listEvents());
				
				map.put("ProfileImage", new ProfileImages());
				map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
				
				map.put("Notification",new Notification());
				map.put("NotificationList", notificationService.listNotification(userMail));
				
				map.put("friendRequest", new FriendRequest());
				map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
				
		return "Photos";
	}

}
