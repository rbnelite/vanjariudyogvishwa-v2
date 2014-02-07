package com.rbnelite.udyogvishwa.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.service.IndexService;

@Controller
@SessionAttributes("CurrentEmailId")
public class IndexController {

	@Resource
	private IndexService indexservice;
	
	@RequestMapping(value="/Index" ,method=RequestMethod.POST)
	public String registration(@Valid Index index,BindingResult result,@RequestParam("emailId") String emailId,  @ModelAttribute("IndexCredential")IndexCredential indexcredential,ModelMap map)
	{
		if(result.hasErrors())
		{
			return "Index";
		}
		else
		{
		indexservice.saveRegistration(indexcredential);
		map.put("CurrentEmailId", emailId);
		map.addAttribute("occupation", new Occupation());
		return "Step3Occupation";
		}
	}
	
	@RequestMapping(value="/loginAuthentication", method=RequestMethod.POST)
	public String initLogin(@RequestParam("user_name") String user_name, @RequestParam("password") String passWord, ModelMap map)
	{
		
		List<?> tempLoginUserList=indexservice.LoginAuthintication(user_name, passWord);
		if(!tempLoginUserList.isEmpty())
		{
			
			map.put("CurrentEmailId", user_name);
			return "Home";
		}
		
		else
		{
			map.put("LoginError", "invalid userName or password !");
				return "Index";
		}
		
	}
	
		@RequestMapping(value="/Index")
		public String indexForm(ModelMap map)
		{
			map.addAttribute("index", new Index());
			return "Index";
		}
		
}
