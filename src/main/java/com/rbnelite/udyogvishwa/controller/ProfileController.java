/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.ContactService;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.RelegionService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

/**
 * @author PC3
 * 
 */
@Controller
public class ProfileController {

	@Resource
	private OtherDetailsService otherDetailsServ;
	@Resource
	private EducationWorkService educationWorkService;

	@Resource
	private HobbiesService hobbiesServ;

	@Resource
	private ProductService productservice;
	
	@Resource
	private IntrestAreasService intrestAreasService;
	
	@Resource
	private ProfileImageService profileImageService; 
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private NotificationService notificationService;
	@Resource
	private ContactService contactServ;
	@Resource
	private RelegionService relegionservice;
	
	@RequestMapping(value = "/Profile")
	public String ProfileOperation(Map<String, Object> map, String userMail) throws ServletException {
		
		LoginUser loginUser = RequestContext.getUser();
		
		userMail=loginUser.getEmail();
		/*userMail=(String) session.getAttribute("loginUser");*/
		
		System.out.println("from profile Controller() get method.");

		if (!map.containsKey("EditOtherDetails")) {
			map.put("otherDetails", new OtherDetails());
			map.put("otherDetailsList", otherDetailsServ.listOtherDetails(userMail));
			
		}
		if (!map.containsKey("EditEducationDetails")) {
			map.put("educationWORK", new EducationWork());
			map.put("educationworkList", educationWorkService.listEducationWork(userMail));
		}
		
		if (!map.containsKey("editHobbiesDetails")) {
		map.put("hobbiesDetails", new Hobbies());
		map.put("hobbiesList", hobbiesServ.listHobbies(userMail));
		}
		
		if (!map.containsKey("EditReligionList")) {
			map.put("religionDetails", new Index());
			map.put("religionList", relegionservice.listReligion(userMail));
		}
		
				
		if (!map.containsKey("editProductDetails")) {
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct(userMail));
		}
		
		if (!map.containsKey("editIntrestAreasDetails")) {
			map.put("intrestAreasDetails", new IntrestAreas());
			map.put("intrestAreasList", intrestAreasService.listIntrestAreas(userMail));
		}
		
		if (!map.containsKey("EditContactDetailsList")) {
			map.put("contactInfo", new Index());
			map.put("contactInfoList", contactServ.listContact(userMail));
		}
		
		if (!map.containsKey("EditReligionList")) {
			map.put("religionDetails", new Index());
			map.put("religionList", relegionservice.listReligion(userMail));
		}
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
		
		map.put("Notification",new Notification());
		map.put("NotificationList", notificationService.listNotification(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
				
		return "Profile";
	}

	@RequestMapping(value = "/EditOtherDetails")
	public String editOtherDetails(@RequestParam("usermail") String emailId, Map<String, Object> map) throws ServletException {

		map.put("EditOtherDetails", new OtherDetails());
		map.put("EditOtherDetailsList", otherDetailsServ.listOtherDetails(emailId));
		ProfileOperation(map,emailId);

		return "Profile";

	}
	
	@RequestMapping(value = "/EditEducationDetails")
	public String editEducationDetails(@RequestParam("usermail") String emailId, Map<String, Object> map) throws ServletException {

		map.put("EditEducationDetails", new EducationWork());
		map.put("EditEducationDetailsList", educationWorkService.listEducationWork(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditContactDetails")
	public String EditContactDetails(@RequestParam("usermail") String emailId, Map<String, Object> map) throws ServletException {

		map.put("EditContactDetails", new Index());
		map.put("EditContactDetailsList", contactServ.listContact(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditReligionDetails")
	public String editReligionDetails(@RequestParam("usermail") String emailId, Map<String, Object> map)  throws ServletException{

		map.put("EditReligionDetails", new Index());
		map.put("EditReligionList", relegionservice.listReligion(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditHobbiesDetails")
	public String editHobbiesDetails(@RequestParam("usermail") String emailId, Map<String, Object> map)  throws ServletException {

		map.put("editHobbiesDetails", new Hobbies());
		map.put("editHobbiesList", hobbiesServ.listHobbies(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditProductDetails")
	public String editProductDetails(@RequestParam("usermail") String emailId,Map<String, Object> map)  throws ServletException {

		map.put("editProductDetails", new Product());
		map.put("editProductList", productservice.listProduct(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditIntrestAreasDetails")
	public String editIntrestAreasDetails(@RequestParam("usermail") String emailId, Map<String, Object> map)  throws ServletException{

		map.put("editIntrestAreasDetails", new IntrestAreas());
		map.put("editIntrestAreasDetailsList", intrestAreasService.listIntrestAreas(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	
	@RequestMapping(value = "/ProfileFromHome")
	public String homeReqProfile(@RequestParam("usermail") String emailId, Map<String, Object> map)  throws ServletException {

		map.put("CurrentEmailId", emailId);
		
		
		ProfileOperation(map,emailId);
		return "Profile";
	}

}
