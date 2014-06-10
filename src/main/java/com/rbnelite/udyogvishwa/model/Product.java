package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {

	@Id
	@Column(name="product_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="product_sequence_id")
	@SequenceGenerator(name="product_sequence_id",sequenceName="product_sequence",allocationSize=1)
	private int productId;
	
	@Column(name="product_name")
	private String productName;
	
	@Column(name="product_details")
	private String productDetails;
	
	@Column(name="email")
	private String userMail;
	
	@Column(name="img_path")
	private String imgPath;
	
	
	public int getProductId() {
		return productId;
	}
	
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getProductDetails() {
		return productDetails;
	}
	
	public void setProductDetails(String productDetails) {
		this.productDetails = productDetails;
	}
	
	public String getUserMail() {
		return userMail;
	}
	
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	
	public String getImgPath() {
		return imgPath;
	}
	
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
}