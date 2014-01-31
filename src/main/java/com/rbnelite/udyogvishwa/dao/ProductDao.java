package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Product;

public interface ProductDao {

	public void insertProduct(Product product);
	
	public List <Product> listProduct(String userMail);
}
