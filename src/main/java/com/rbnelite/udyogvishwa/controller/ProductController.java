package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rbnelite.udyogvishwa.dto.ProductCredential;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.service.ProductService;

@Controller
public class ProductController {

	@Resource
	private ProductService productservice;

	@RequestMapping(value = "/AddProduct", method = RequestMethod.POST)
	public String insertProduct(HttpServletRequest request,HttpServletResponse response,
			@ModelAttribute("ProductCredential") ProductCredential productcredential,
			ModelMap map,String userMail) throws ServletException {

		
		HttpSession session = request.getSession(true);
		userMail=(String) session.getAttribute("CurrentEmailId");
		
		productservice.insertProduct(productcredential);
		
		listProduct(request,response, map,userMail);
		
		return "Products";
	}

	@RequestMapping(value = "/Product")
	public String listProduct(HttpServletRequest request,HttpServletResponse response,Map<String, Object> map,String emailId)  throws ServletException {
		map.put("productNAME", new Product());

		map.put("ProductList", productservice.listProduct(emailId));

		return "Products";
	}
}
