package com.rbnelite.udyogvishwa.controller;

import java.io.File;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.dto.ProductCredential;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class ProductController {

	@Resource
	private ProductService productservice;

	@Resource
	private EventsService eventService;
	
	@Resource
	private ProfileImageService profileImageService;
	
	private String saveDirectory = "F:/team/Manoj/project/vanjariudyogvishwa-v2/webapp/resources/mytheme/ProductImages/";
	
	@Resource 
	private FriendRequestService friendrequestservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private NotificationService notificationService;

	@RequestMapping(value = "/AddProduct", method = RequestMethod.POST)
	public String insertProduct(HttpServletRequest request, HttpServletResponse response,@RequestParam("productName")String pname, @RequestParam("productDetails")String pdetail, @RequestParam CommonsMultipartFile[] imgPath, 
			ModelMap map) throws Exception {
    System.out.println("gooodmorning");
    LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
				if (imgPath != null && imgPath.length > 0) {
            for (CommonsMultipartFile aFile : imgPath){
                 
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                 
                if (!aFile.getOriginalFilename().equals("")) {
                	 aFile.transferTo(new File(saveDirectory + aFile.getOriginalFilename()));
                 
                	
             		        	 
             	
                	productservice.insertProduct(pname, pdetail,aFile.getOriginalFilename(),userMail);
                	
                
                }
                
            }
        }
		
		
				map.put("productNAME", new Product());
				map.put("ProductList", productservice.listProduct(userMail));
				
				map.put("knownPeople", new IntrestAreas());
				map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(userMail));
				
				map.put("myEvents", new Event());
				map.put("eventstList", eventService.listEvents());
				
				map.put("ProfileImage", new ProfileImages());
				map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
				
				map.put("Notification",new Notification());
				map.put("NotificationList", notificationService.listNotification(userMail));
				
				map.put("friendRequest", new FriendRequest());
				map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
				
		return "Products";
	}

	@RequestMapping(value = "/Product")
	public String listProduct(HttpServletRequest request,HttpServletResponse response,Map<String, Object> map)  throws ServletException {
		LoginUser loginUser = RequestContext.getUser();
		String emailId=loginUser.getEmail();

		System.out.println("$$$$$$$"+emailId);
		
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct(emailId));
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(emailId));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());

		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(emailId));

		String userMail=loginUser.getEmail();

		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));

		return "Products";
	}
}
