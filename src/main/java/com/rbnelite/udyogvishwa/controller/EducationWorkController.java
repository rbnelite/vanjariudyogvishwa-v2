package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;





import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;





import com.rbnelite.udyogvishwa.dto.EducationWorkCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.service.EducationWorkService;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Controller
public class EducationWorkController {
	
@Resource
private EducationWorkService educationWorkService;



@RequestMapping(value="/educationwork", method=RequestMethod.POST)
public String insert(@RequestParam("userMail") String emailId, @Valid EducationWork educationWork, BindingResult result, @ModelAttribute("EducationWorkCredential") EducationWorkCredential educationworkcredential, ModelMap map){
	
	if(result.hasErrors()) {
		map.put("CurrentEmailId", emailId);
        return "Step8EducationWork";
    }
	else
	{
	educationWorkService.insertEducationWork(educationworkcredential);
	map.put("CurrentEmailId", emailId);
	return"Step9LifeStyle";
	}
	
}


@RequestMapping(value = "/EditEducation", method=RequestMethod.POST)
public String editEducation(@ModelAttribute EducationWork educationWork, Map<String, Object> map) throws ServletException {
	
	LoginUser loginUser = RequestContext.getUser();
	String emailId=loginUser.getEmail();
	System.out.println("from Education controller- editEducation("+emailId+") method");
		
		educationWorkService.updateEducation(educationWork);
		
		
	return "Profile";
}




@RequestMapping(value="/educationwork")
public String OccupationForm(ModelMap map){
	map.addAttribute("educationWork", new EducationWork());
	
	return "Step8EducationWork";
}
}

