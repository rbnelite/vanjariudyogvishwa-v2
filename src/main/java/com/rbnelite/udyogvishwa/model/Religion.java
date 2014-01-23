package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="religion")
public class Religion {

	@Id
	@Column(name="religionid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="religion_sequence_religionid")
	@SequenceGenerator(name="religion_sequence_religionid",sequenceName="religion_sequence",allocationSize=1)
	private int religionid;
	
	private String religionName;
	private String relCast;
	private String motherToung;
	private String nativePlace;
	private String userMail;
	
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
	public String getRelcast() {
		return relCast;
	}
	public void setRelcast(String relcast) {
		this.relCast = relcast;
	}
	public String getMothertoung() {
		return motherToung;
	}
	public void setMothertoung(String mothertoung) {
		this.motherToung = mothertoung;
	}
	public String getNativeplace() {
		return nativePlace;
	}
	public void setNativeplace(String nativeplace) {
		this.nativePlace = nativeplace;
	}
	public String getUsermail() {
		return userMail;
	}
	public void setUsermail(String usermail) {
		this.userMail = usermail;
	}
	
}
