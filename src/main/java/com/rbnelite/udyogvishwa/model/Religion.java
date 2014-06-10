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
@Table(name="religion")
public class Religion {

	@Id
	@Column(name="religionid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="religion_sequence_religionid")
	@SequenceGenerator(name="religion_sequence_religionid",sequenceName="religion_sequence",allocationSize=1)
	private int religionid;
	
	@Column(name="")
	@NotEmpty
	private String religionName;
	
	@Column
	private String relCast;
	
	@Column
	private String userMail;
	
	public String getRelCast() {
		return relCast;
	}
	public void setRelCast(String relCast) {
		this.relCast = relCast;
	}
	public int getReligionid() {
		return religionid;
	}
	public void setReligionid(int religionid) {
		this.religionid = religionid;
	}
	public String getReligionname() {
		return religionName;
	}
	public void setReligionname(String religionname) {
		this.religionName = religionname;
	}
	public String getUsermail() {
		return userMail;
	}
	public void setUsermail(String usermail) {
		this.userMail = usermail;
	}	}