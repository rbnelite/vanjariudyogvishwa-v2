package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.IndexService;
import com.rbnelite.udyogvishwa.service.ProductService;
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
	
	@RequestMapping(value="/SearchResult")
	public String searchForm(@RequestParam("SearchData") String searchstrHome,  Map<String, Object> map)
	{
		map.put("myEvents", new Event());
		
		map.put("eventstList", eventService.listEvents());

		map.put("SearchUserList", indexService.searchUserList(searchstrHome));
		
		map.put("searchProduct", new Product());
		map.put("SearchProductList", productservice.searchProductList(searchstrHome));
		
		map.put("searchStatus", new Status());
		map.put("SearchStatusList", statusservice.searchStatusList(searchstrHome));
		
		map.put("myComment", new Comment());
		map.put("commentList", commentservice.listComment());
		
		return "SearchResult";
	}
}
