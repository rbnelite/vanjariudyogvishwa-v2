/**
 * 
 */
package com.rbnelite.udyogvishwa.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.MessageDTO;
import com.rbnelite.udyogvishwa.service.MessageService;



/**
 * @author PC3
 *
 */
@Controller
public class MessageController {
	
	@Resource
	private MessageService ObjmsgService;
	
	@RequestMapping(value="/message", method=RequestMethod.POST)
	public String messageMethod(@ModelAttribute("MessageDTO") MessageDTO msgdto,
			ModelMap map){
		ObjmsgService.addMessage(msgdto);
		return "message";
	}
	
	@RequestMapping(value = "/message")
	public String messageForm(ModelMap map1) {
		return "message";
	}
	
	
	
	}
	
	
	
	
	

