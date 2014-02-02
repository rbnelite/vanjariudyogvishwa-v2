package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.IndexService;



@Controller
public class SearchResultController {
	
	@Resource
	private IndexService indexService;
	
	

	@RequestMapping(value="/SearchResult")
	public String searchForm(@RequestParam("SearchData") String searchstrHome,  Map<String, Object> map)
	{
		
		map.put("SearchUserList", indexService.searchUserList(searchstrHome));
		return "SearchResult";
	}
}
