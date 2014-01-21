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
	public int getReligionid() {
		return religionid;
	}
	public void setReligionid(int religionid) {
		this.religionid = religionid;
	}
	public String getReligionname() {
		return religionname;
	}
	public void setReligionname(String religionname) {
		this.religionname = religionname;
	}
	public String getRelcast() {
		return relcast;
	}
	public void setRelcast(String relcast) {
		this.relcast = relcast;
	}
	public String getMothertoung() {
		return mothertoung;
	}
	public void setMothertoung(String mothertoung) {
		this.mothertoung = mothertoung;
	}
	public String getNativeplace() {
		return nativeplace;
	}
	public void setNativeplace(String nativeplace) {
		this.nativeplace = nativeplace;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	private String religionname;
	private String relcast;
	private String mothertoung;
	private String nativeplace;
	private String usermail;
}
