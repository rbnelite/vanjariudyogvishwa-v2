package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.FriendRequest;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.FriendRequestService;
import com.rbnelite.udyogvishwa.service.IndexService;
import com.rbnelite.udyogvishwa.service.OcccupationService;
import com.rbnelite.udyogvishwa.service.PeopleRefrenceService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class SearchResultController {
	
	@Resource
	private IndexService indexService;
	@Resource
	private EventsService eventService;
	@Resource
	private ProductService productservice;
	@Resource
	private StatusService statusservice;
	@Resource
	private PeopleRefrenceService peoplerefservice;
	@Resource
	private ProfileImageService profileImageService;
	@Resource
	private FriendRequestService friendrequestservice;
	@Resource
	private OcccupationService occupationservice;
	
	@RequestMapping(value="/SearchResult")
	public String searchForm(@RequestParam("SearchData") String searchstrHome,  Map<String, Object> map)
	{
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
    	
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());

		map.put("SearchUserList", indexService.searchUserList(searchstrHome));
		
		map.put("searchProduct", new Product());
		map.put("SearchProductList", productservice.searchProductList(searchstrHome));
		
		System.out.println("from search controller after Index and comment search");
		
		map.put("searchStatus", new Status());
		map.put("SearchStatusList", statusservice.searchStatusList(searchstrHome));
					
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		
		return "SearchResult";
	}
	
	
	@RequestMapping(value="/SearchResultForProffestion")
	public String searchFormForProffession(@RequestParam("SearchDatabyprofession") String SearchDatabyprofession,  Map<String, Object> map)
	{
		System.out.println("from search controller...!!!");
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();
		
		map.put("searchSByProf", new Occupation());
		map.put("searchSByProfList", occupationservice.searchPeopleByProffession(SearchDatabyprofession));
		
		map.put("myEvents", new Event());
		map.put("eventstList", eventService.listEvents());
		
		map.put("knownPeople", new IntrestAreas());
		map.put("knownPeopleList", peoplerefservice.peopleYouMayKnow(userMail));
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		map.put("friendRequest", new FriendRequest());
		map.put("friendRequestList", friendrequestservice.listFriendRequest(userMail));
		
		return "SearchResult";
	}

}
