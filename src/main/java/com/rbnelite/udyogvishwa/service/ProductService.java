package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.ProductCredential;
import com.rbnelite.udyogvishwa.model.Product;

public interface ProductService {
	
	public void insertProduct(String pname, String pdetail,
			String originalFilename, String userMail);
	
	public List <Product> listProduct(String userMail);
	
	public List searchProductList(String SearchData);

	
}
