package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="users")
public class Index {
	
	@Id
	@Column(name="sno")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="registration_sequence_id")
	@SequenceGenerator(name="registration_sequence_id", sequenceName="registration_sequence",allocationSize=1)
	private int id;
	
	@Column(name="first_name")
	@NotEmpty
	private String firstName;
	
	@Column(name="middle_name")
	@NotEmpty
	private String middleName;
	
	@Column(name="last_name")
	@NotEmpty
	private String lastName;
	
	@Column(name="email")
	@NotEmpty
	private String emailId;
	
	@Column(name="contact_no")
	@NotEmpty
	private String contactNo;
	
	@Column(name="birthdate")
	@NotEmpty
	private String birthDate;
	
	@Column
	@NotEmpty
	private String gender;
	
	@Column(name="password")
	@NotEmpty
	private String password;
	
	private String telephone;
	
	@Column(name="contact_id")
	private int contactId;
	
	@Column(name="home_address")
	private String homeAddress;
	
	private String religion;
	
	@Column(name="subcast")
	private String subCast;
	
	@Column(name="office_address")
	private String officeAddress;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	

	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password1) {
		this.password = password1;
	}

	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getHomeAddress() {
		return homeAddress;
	}
	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getSubCast() {
		return subCast;
	}
	public void setSubCast(String subCast) {
		this.subCast = subCast;
	}
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	}
