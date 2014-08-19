
package com.rbnelite.udyogvishwa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.model.Event;


@Controller
public class AutoRefreshController {

	
	@RequestMapping(value="/AutoRefresh")
	public String getAutoRefresh(ModelMap map) {
		
		System.out.println("******* from getAutoRefresh() **********");
		
		map.put("UpperDivContents", "Hello & Welcome ...! This is Upper div");
		
		return "AutoRefreshDemo";
	}
	
	@RequestMapping(value="/AutoRefresh", method=RequestMethod.POST)
	public void setAutoRefresh(@RequestParam("name") String eventname,
			@RequestParam("details") String eventdetails,
			@RequestParam("location") String eventlocation,
			@RequestParam("datatime") String eventdate,
			@RequestParam("usermail") String eventusermail,
			ModelMap map) {
		
		System.out.println("******* from setAutoRefresh() **********");
		
		/*
			System.out.println("******* from setAutoRefresh() **********");
			System.out.println(eventname);
			System.out.println(eventdetails);
			System.out.println(eventlocation);
			System.out.println(eventdate);
			System.out.println(eventusermail);
			System.out.println("******* from setAutoRefresh() **********");
		
		*/
		
		
		
		
		Event e1=new Event();
		e1.setName(eventname);
		e1.setDetails(eventdetails);
		e1.setLocation(eventlocation);
		e1.setDatatime(eventdate);
		e1.setUsermail(eventusermail);
		
		map.put("myEventData", e1);
		
		/*return "AutoRefreshDemo";*/
	}
	
}
