package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.ProfileImages;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.IndexService;
import com.rbnelite.udyogvishwa.service.ProductService;
import com.rbnelite.udyogvishwa.service.ProfileImageService;
import com.rbnelite.udyogvishwa.service.StatusService;

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
	private CommentService commentservice;
	@Resource
	private ProfileImageService profileImageService;
	
	@RequestMapping(value="/SearchResult")
	public String searchForm(HttpServletRequest request, @RequestParam("SearchData") String searchstrHome,  Map<String, Object> map)
	{
		
		HttpSession session=request.getSession(true);
    	LoginUser loginUser=(LoginUser) session.getAttribute("loginUser");
    	String userMail=loginUser.getEmail();
    	
		
		map.put("myEvents", new Event());
		
		map.put("eventstList", eventService.listEvents());

		map.put("SearchUserList", indexService.searchUserList(searchstrHome));
		
		map.put("searchProduct", new Product());
		map.put("SearchProductList", productservice.searchProductList(searchstrHome));
		
		map.put("searchStatus", new Status());
		map.put("SearchStatusList", statusservice.searchStatusList(searchstrHome));
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		map.put("ProfileImage", new ProfileImages());
		map.put("ProfileImageList", profileImageService.getProfileImage(userMail));
		
		return "SearchResult";
	}
}