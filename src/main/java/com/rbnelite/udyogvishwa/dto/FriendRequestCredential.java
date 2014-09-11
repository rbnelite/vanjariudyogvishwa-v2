package com.rbnelite.udyogvishwa.dto;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class FriendRequestCredential {

	private String requestFrom;
	
	private String  requestTo;
	
	private String requestStatus;
	
	private String requestDate;

	public String getRequestFrom() {
		return requestFrom;
	}

	@XmlElement
	public void setRequestFrom(String requestFrom) {
		this.requestFrom = requestFrom;
	}

	public String getRequestTo() {
		return requestTo;
	}

	@XmlElement
	public void setRequestTo(String requestTo) {
		this.requestTo = requestTo;
	}

	public String getRequestStatus() {
		return requestStatus;
	}

	@XmlElement
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}

	public String getRequestDate() {
		return requestDate;
	}

	@XmlElement
	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}
	
}
