package com.rbnelite.udyogvishwa.dto;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class EventsCredential {
	
	private String name;
	private String details;
	private String location;
	private String datatime;
	private String usermail;
	
	
	public String getName() {
		return name;
	}
	@XmlElement
	public void setName(String name) {
		this.name = name;
	}
	public String getDetails() {
		return details;
	}
	@XmlElement
	public void setDetails(String details) {
		this.details = details;
	}
	public String getLocation() {
		return location;
	}
	@XmlElement
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDatatime() {
		return datatime;
	}
	@XmlElement
	public void setDatatime(String datatime) {
		this.datatime = datatime;
	}
	public String getUsermail() {
		return usermail;
	}
	@XmlElement
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	

}
