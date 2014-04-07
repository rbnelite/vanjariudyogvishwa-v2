package com.rbnelite.udyogvishwa.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;



import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;

@Controller
public class ProfilePhotoOperationController {

	@Resource
	ProfileImageService profileImageService;
	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;
	@Resource
	private ProductService productservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private FriendRequestService friendrequestservice;
	
	 private String saveDirectory = "F:/team/anil/project/vanjariudyogvishwa-v2/webapp/resources/mytheme/ProfileImages/";
     
	    @RequestMapping(value="/uploadFile", method = RequestMethod.POST)
	    public String handleFileUpload(HttpServletRequest request, @RequestParam("userMail")String userMail, @RequestParam CommonsMultipartFile[] profileImage) throws Exception {
	         System.out.println("frome upload file controller");
	       
	         
	        if (profileImage != null && profileImage.length > 0) {
	            for (CommonsMultipartFile aFile : profileImage){
	                 
	                System.out.println("Saving file: " + aFile.getOriginalFilename());
	                 
	                if (!aFile.getOriginalFilename().equals("")) {
	                	String fileName=aFile.getOriginalFilename();
	                	
	                	
	                	HttpSession session = request.getSession(true);
	            		/*String userMail=(String)session.getAttribute("CurrentEmailId");*/
	                	userMail="sawantmanojm@gmail.com";
	                	
	                	profileImageService.insertProfileImage(fileName, userMail);
	                	
	                    aFile.transferTo(new File(saveDirectory + aFile.getOriginalFilename()));
	                   
	                    return "ThankYou";
	                }
	            }
	        }
	 
	        // returns to the view "Result"
	        return "ProfilePhotoOperation";
	    }
	    
	    
	    @RequestMapping(value="/UpdateProfileImage" , method=RequestMethod.POST)
	    public String updateProfileImage(HttpServletRequest request,HttpServletResponse response,@RequestParam("JspPageName") String JspPageName,@RequestParam CommonsMultipartFile[] updateProfileImage, ModelMap map)throws Exception{
	    	
	    	System.out.println("frome upload file controller");
	       
	    	HttpSession session=request.getSession(true);
        	LoginUser loginUser=(LoginUser) session.getAttribute("loginUser");
        	String userMail=loginUser.getEmail();
	         
	        if (updateProfileImage != null && updateProfileImage.length > 0) {
	            for (CommonsMultipartFile aFile : updateProfileImage){
	                 
	                System.out.println("Saving/Updating Profile Image file: " + aFile.getOriginalFilename());
	                 
	                if (!aFile.getOriginalFilename().equals("")) {
	                	String fileName=aFile.getOriginalFilename();
	                	
	                	profileImageService.UpdateProfileImage(fileName, userMail);
	                	
	                    aFile.transferTo(new File(saveDirectory + aFile.getOriginalFilename()));

	                    map.put("ProfileImage", new ProfileImages());
	            		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
	            		
	            		map.put("status11", new Status());
	            		List<Status> status = statusservice.listStatus(userMail);
	            		map.put("statusList", status);
	            		
	            		map.put("myEvents", new Event());
	            		map.put("eventstList", eventService.listEvents());
	            		
	            		map.put("myComment", new Comment());
	            		map.put("commentList", commentservice.listComment());
	            		
	            		map.put("productNAME", new Product());
	            		map.put("ProductList", productservice.listProduct(userMail));
	            		
	            		map.put("knownPeople", new IntrestAreas());
	            		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(userMail));
	            		

	            		map.put("friendRequest", new FriendRequest());
	            		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));

	            		map.put("ab", "your profile picture changed sucessfully");

	                }
	            }
	        }
	        
	      
	                
	    	return JspPageName;
	    	
	    }
	    
	    @RequestMapping(value = "/uploadFile")
		public String ProfilePhotoOperationForm( ModelMap map) {
	    	
			return "ProfilePhotoOperation";
		}
}
