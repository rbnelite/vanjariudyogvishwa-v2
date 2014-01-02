package com.rbnelite.udyogvishwa.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="registration")
public class Registration {
	
	@Id
	@Column(name="sno")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="registration_sequence_id")
	@SequenceGenerator(name="registration_sequence_id",sequenceName="registration_sequence",allocationSize=1)
	private int id;
	
	@Column(name = "first_name")
	private String first_name;
	
	@Column
	private String middle_name;
	
	@Column
	private String last_name;
	
	@Column
	private String email_id;
	
	@Column
	private String mobile_no;
	
	@Column
	private String gender;
	
	@Column
	private String birth_date;
	
	@Column
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getMiddle_name() {
		return middle_name;
	}
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth_date() {
		return birth_date;
	}
	public void setBirth_date(String birth_date) {
		this.birth_date = birth_date;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
