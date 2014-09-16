
package com.rbnelite.udyogvishwa.dto;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class StatusDTO {

	private int id;
	private String status;
	private String statusDate;
	private String usermail;
	
	public int getId() {
		return id;
	}
	
	@XmlElement
	public void setId(int id) {
		this.id = id;
	}
	
	public String getStatus() {
		return status;
	}
	
	@XmlElement
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getStatusDate() {
		return statusDate;
	}
	
	@XmlElement
	public void setStatusDate(String statusDate) {
		this.statusDate = statusDate;
	}
	
	public String getUsermail() {
		return usermail;
	}
	
	@XmlElement
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
}
