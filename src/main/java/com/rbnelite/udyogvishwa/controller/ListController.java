package com.rbnelite.udyogvishwa.controller;




import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.service.IndexService;

/*import com.rbnelite.services.RegistrationServices;*/

@Controller
public class ListController {

	/*@Resource
	private RegistrationServices registrationServices;*/
	@Resource
	private IndexService indexService;
	
	
	
	@RequestMapping(value="/list")
	public String initlist(@RequestParam("q") String searchstrHome, ModelMap map){
		
		System.out.println("###"+searchstrHome);  
		map.put("SearchUserList", indexService.searchUserList(searchstrHome));
		
		
		
		/* List<String> keyList = new ArrayList<String>(map.keySet());
	        System.out.println("Size of Key list from Map: " + keyList.size());*/

	


		return "list";
		
	}
	
}
