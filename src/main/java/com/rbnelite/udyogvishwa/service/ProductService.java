package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.ProductCredential;
import com.rbnelite.udyogvishwa.model.Product;

public interface ProductService {
	
	public void insertProduct(ProductCredential productcredential);
	
	public List <Product> listProduct();
}
