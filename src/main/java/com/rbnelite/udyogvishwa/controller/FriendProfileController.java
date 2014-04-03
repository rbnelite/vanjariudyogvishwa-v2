package com.rbnelite.udyogvishwa.controller;



import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LifeStyle;
import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.AstroService;
import com.rbnelite.udyogvishwa.service.ContactService;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;
import com.rbnelite.udyogvishwa.service.LifeStyleService;
import com.rbnelite.udyogvishwa.service.NotificationService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class FriendProfileController {

	
	
	@Resource
	private IntrestAreasService intrestAreasService;
	
	@Resource
	private ProductService productservice;
	
	@Resource
	private EducationWorkService educationWorkService;
	
	@Resource
	private OtherDetailsService otherDetailsService;
	
	@Resource
	private HobbiesService hobbiesservice;
	
	@Resource
	private LifeStyleService lifestyleservice;
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private ContactService contactservice;
	@Resource
	private ProfileImageService profileImageService; 
	@Resource
	private NotificationService notificationService;
	
	@RequestMapping(value="/FriendProfile")
	public String showFriendProfile(ModelMap map){
		return "FriendProfile";
	} 
	
	@RequestMapping(value="/FriendProfile", method=RequestMethod.POST)
	public String FriendForm(@RequestParam("friendsEmailId")String friendsMail, ModelMap map){
		System.out.println("from friends profile view method"+friendsMail);
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
	map.put("FriendsotherDetailsList", new OtherDetails());
	map.put("FriendsotherDetailsList", otherDetailsService.listOtherDetails(friendsMail));	
 
	map.put("FriendseducationWORK", new EducationWork());
	map.put("FriendseducationworkList", educationWorkService.listEducationWork(friendsMail));

	map.put("FriendshobbiesDetails", new Hobbies());
	map.put("FriendshobbiesList", hobbiesservice.listHobbies(friendsMail));

	map.put("FriendslifeStyleDetails", new LifeStyle());
	map.put("FriendsLifeStylelist", lifestyleservice.listLifeStyle(friendsMail));
	
	map.put("FriendsproductNAME", new Product());
	map.put("FriendsProductList", productservice.listProduct(friendsMail));
	
	map.put("FriendsintrestAreasDetails", new IntrestAreas());
	map.put("FriendsintrestAreasList", intrestAreasService.listIntrestAreas(friendsMail));
	
	map.put("userFriends", new FriendRequest());
	map.put("userFriendsList", friendrequestservice.listFriends(friendsMail));
	
	map.put("ProfileImage", new ProfileImages());
	map.put("ProfileImageList", profileImageService.getProfileImage(friendsMail));
	
	map.put("Notification",new Notification());
	map.put("NotificationList", notificationService.listNotification(userMail));
	
	map.put("friendRequest", new FriendRequest());
	map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
	
	
	
	/*System.out.println("Size of friends friend: "+friendrequestservice.listFriends(userMail).size());*/
	
	return "FriendProfile";

}
}