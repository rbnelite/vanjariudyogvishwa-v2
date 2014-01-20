package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="lifestyle")
public class LifeStyle {

	@Id
	@Column(name="life_style_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="lifestyle_sequence_lifestyleid")
	@SequenceGenerator(name="lifestyle_sequence_lifestyleid",sequenceName="lifestyle_sequence",allocationSize=1)
	private int lifestyleid;
	
	private String diet;
	private String smoke;
	private String drink;
	private String complexion;
	
	@Column(name="body_type")
	private String bodytype;
	@Column(name="bloo_dgroup")
	private String bloodgroup;
	
	private String weight;
	
	@Column(name="email")
	private String usermail;
	public int getLifestyleid() {
		return lifestyleid;
	}
	public void setLifestyleid(int lifestyleid) {
		this.lifestyleid = lifestyleid;
	}
	public String getDiet() {
		return diet;
	}
	public void setDiet(String diet) {
		this.diet = diet;
	}
	public String getSmoke() {
		return smoke;
	}
	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}
	public String getDrink() {
		return drink;
	}
	public void setDrink(String drink) {
		this.drink = drink;
	}
	public String getComplexion() {
		return complexion;
	}
	public void setComplexion(String complexion) {
		this.complexion = complexion;
	}
	public String getBodytype() {
		return bodytype;
	}
	public void setBodytype(String bodytype) {
		this.bodytype = bodytype;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
}
