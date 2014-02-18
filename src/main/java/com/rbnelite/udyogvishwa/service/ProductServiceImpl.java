package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.ProductDao;
import com.rbnelite.udyogvishwa.dto.ProductCredential;
import com.rbnelite.udyogvishwa.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductDao productdao;
	
	@Override
	public void insertProduct(String pname, String pdetail, String originalFilename, String userMail) {
		// TODO Auto-generated method stub
		Product product=new Product();
		product.setProductName(pname);
		product.setProductDetails(pdetail);
		product.setUserMail(userMail);
		product.setImgPath(originalFilename);
		
		productdao.insertProduct(product);
	}

	@Override
	@Transactional
	public List<Product> listProduct(String userMail) {
		
		return productdao.listProduct(userMail);
	}

	@Override
	public List searchProductList(String SearchData) {
		
		return productdao.searchProductList(SearchData);
	}	
		
	}


