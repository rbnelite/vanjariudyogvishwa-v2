package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="astro")
public class Astro {
	
	@Id
	@Column(name="astro_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="astro_sequence_id")
	@SequenceGenerator(name="astro_sequence_id", sequenceName="astro_sequence",allocationSize=1)
	private int id;
	
	@Column
	private String country;
	
	@Column
	private String city;
	
	@Column
	private String zodiac;
	
	@Column(name="email")
	private String userMail;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZodiac() {
		return zodiac;
	}
	public void setZodiac(String zodiac) {
		this.zodiac = zodiac;
	}


}
