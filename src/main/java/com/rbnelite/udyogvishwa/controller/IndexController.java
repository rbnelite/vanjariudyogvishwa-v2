package com.rbnelite.udyogvishwa.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.Occupation;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.service.CommentService;
import com.rbnelite.udyogvishwa.service.EventsService;
import com.rbnelite.udyogvishwa.service.IndexService;
import com.rbnelite.udyogvishwa.service.StatusService;
import com.rbnelite.udyogvishwa.utils.Constants;

@Controller
public class IndexController {

	@Resource
	private IndexService indexservice;
	@Resource
	private StatusService statusservice;
	@Resource
	private EventsService eventService;
	@Resource
	private CommentService commentservice;

	@RequestMapping(value = "/Index", method = RequestMethod.POST)
	public String registration(@Valid Index index, BindingResult result, @RequestParam("emailId") String emailId, 
			@ModelAttribute("IndexCredential") IndexCredential indexcredential, ModelMap map) {
		if (result.hasErrors()) {
			return "Index";
		} else {
			indexservice.saveRegistration(indexcredential);
			map.put("CurrentEmailId", emailId);
			map.addAttribute("occupation", new Occupation());
			return "Step3Occupation";
		}
	}

	@RequestMapping(value = "/loginAuthentication", method = RequestMethod.POST)
	public String initLogin(@RequestParam("user_name") String userName,
			@RequestParam("password") String passWord, HttpServletRequest request, ModelMap map) {

		List<Index> tempLoginUserList = indexservice.LoginAuthintication(userName, passWord);
		if (!tempLoginUserList.isEmpty()) {
			Index index = tempLoginUserList.get(0);
			LoginUser loginUser = new LoginUser();
			loginUser.setEmail(index.getEmailId());
			loginUser.setFirstName(index.getFirstName());
			loginUser.setId(index.getId());
			loginUser.setLastName(index.getLastName());
			
			map.put("loginUser", loginUser);
			request.getSession().setAttribute(Constants.LOGGEDIN_USER, loginUser);
			
			//map.put("CurrentEmailId", userName);

			map.put("status11", new Status());
			List<Status> status = statusservice.listStatus();
			map.put("statusList", status);

			map.put("myEvents", new Event());
			map.put("eventstList", eventService.listEvents());

			map.put("myComment", new Comment());
			map.put("commentList", commentservice.listComment());

			return "Home";
		} else {
			map.put("LoginError", "Invalid userName or password !");
			return "Index";
		}

	}

	@RequestMapping(value = "/logoutUser")
	public String logOutOperation(HttpServletRequest request,
			HttpServletResponse response, ModelMap map) throws ServletException {

		HttpSession session = request.getSession();
		session.invalidate();
		//session.setAttribute("CurrentEmailId", null);
		map.addAttribute("index", new Index());
		map.put("LogOutMsg", "You are Loged Out Successfully !");

		return "Index";

	}

	@RequestMapping(value = "/Index")
	public String indexForm(ModelMap map) {
		map.addAttribute("index", new Index());
		return "Index";
	}

}
