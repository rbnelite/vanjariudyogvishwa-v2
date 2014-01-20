package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="contacts")
public class Contact {

	
	@Id
	@Column(name="contact_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="contact_sequence_id")
	@SequenceGenerator(name="contact_sequence_id",sequenceName="contacts_sequence",allocationSize=1)
	private int id;
	
	@Column(name="home_address")
	private String homeAddress;
	
	@Column(name="office_address")
	private String officeAddress;
	
	@Column(name="telephone")
	private String telephone;
	
	@Column(name="email")
	private String userMail;
	
	
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
	public String getTelephoneNo() {
		return telephone;
	}
	public void setTelephoneNo(String telephoneNo) {
		this.telephone = telephoneNo;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

}
