package com.rbnelite.udyogvishwa.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rbnelite.udyogvishwa.dto.ProductCredential;
import com.rbnelite.udyogvishwa.model.Product;
import com.rbnelite.udyogvishwa.service.ProductService;

@Controller
public class ProductController {

	@Resource
	private ProductService productservice;

	@RequestMapping(value = "/AddProduct", method = RequestMethod.POST)
	public String insertProduct(
			@ModelAttribute("ProductCredential") ProductCredential productcredential,
			ModelMap map) {

		productservice.insertProduct(productcredential);
		
		listProduct(map);
		
		return "Products";
	}

	@RequestMapping(value = "/Product")
	public String listProduct(Map<String, Object> map) {
		map.put("productNAME", new Product());

		map.put("ProductList", productservice.listProduct());

		return "Products";
	}
}
