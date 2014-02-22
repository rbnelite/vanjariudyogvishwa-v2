/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;










import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.LifeStyle;
import com.rbnelite.udyogvishwa.model.OtherDetails;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.service.AstroService;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.HobbiesService;
import com.rbnelite.udyogvishwa.service.IntrestAreasService;
import com.rbnelite.udyogvishwa.service.LifeStyleService;
import com.rbnelite.udyogvishwa.service.OtherDetailsService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
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
	private AstroService astroServ;

	@Resource
	private LifeStyleService lifeStyleServ;
	@Resource
	private ProductService productservice;
	
	@Resource
	private IntrestAreasService intrestAreasService;
	
	@Resource
	private ProfileImageService profileImageService; 
	@Resource
	private FriendRequestService friendrequestservice;

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
		
		if (!map.containsKey("editAstroDetails")) {
		map.put("astroDetails", new Astro());
		map.put("astroList", astroServ.listAstro(userMail));
		}
		
		if (!map.containsKey("editLifeStyleDetails")) {
		map.put("lifeStyleDetails", new LifeStyle());
		map.put("LifeStylelist", lifeStyleServ.listLifeStyle(userMail));
		}
		
		if (!map.containsKey("editProductDetails")) {
		map.put("productNAME", new Product());
		map.put("ProductList", productservice.listProduct(userMail));
		}
		
		if (!map.containsKey("editIntrestAreasDetails")) {
			map.put("intrestAreasDetails", new IntrestAreas());
			map.put("intrestAreasList", intrestAreasService.listIntrestAreas(userMail));
		}
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("userFriends", new FriendRequest());
		map.put("userFriendsList", friendrequestservice.listFriends(userMail));
				
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
	
	@RequestMapping(value = "/EditHobbiesDetails")
	public String editHobbiesDetails(@RequestParam("usermail") String emailId, Map<String, Object> map)  throws ServletException {

		map.put("editHobbiesDetails", new Hobbies());
		map.put("editHobbiesList", hobbiesServ.listHobbies(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditAstroDetails")
	public String editAstroDetails(@RequestParam("usermail") String emailId, Map<String, Object> map)  throws ServletException{

		map.put("editAstroDetails", new Astro());
		map.put("editAstroList", astroServ.listAstro(emailId));
		ProfileOperation(map,emailId);
		return "Profile";
	}
	
	@RequestMapping(value = "/EditLifeStyleDetails")
	public String editLifeStyle(@RequestParam("usermail") String emailId, Map<String, Object> map) throws ServletException {

		map.put("editLifeStyleDetails", new LifeStyle());
		map.put("editLifeStyleList", lifeStyleServ.listLifeStyle(emailId));
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
