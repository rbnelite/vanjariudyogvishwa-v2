package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table
public class Contact {

	
	@Id
	@Column(name="contactid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="contact_sequence_id")
	@SequenceGenerator(name="contact_sequence_id",sequenceName="contact_sequence",allocationSize=1)
	private int id;
	
	@Column(name="homeaddress")
	private String homeAddress;
	
	@Column
	private String officeAddress;
	
	@Column
	private String telephone;
	
	@Column(name="email")
	private String userMail;
	
	
	
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	

}
