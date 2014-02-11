package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="friend_requests")
public class FriendRequest {

	@Id
	@Column(name="request_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="friendrequests_sequence_id")
	@SequenceGenerator(name="friendrequests_sequence_id",sequenceName="friend_requests_sequence",allocationSize=1)
	private long requestid;
	
	@Column(name="requestfrom_id")
	private String requestFrom;
	
	@Column(name="requestto_id")
	private String  requestTo;
	
	@Column(name="status")
	private String requestStatus;
	
	@Column(name="date")
	private String requestDate;

	public long getRequestid() {
		return requestid;
	}

	public void setRequestid(long requestid) {
		this.requestid = requestid;
	}

	public String getRequestFrom() {
		return requestFrom;
	}

	public void setRequestFrom(String requestFrom) {
		this.requestFrom = requestFrom;
	}

	public String getRequestTo() {
		return requestTo;
	}

	public void setRequestTo(String requestTo) {
		this.requestTo = requestTo;
	}

	public String getRequestStatus() {
		return requestStatus;
	}

	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}

	public String getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(String requestDate) {
		this.requestDate = requestDate;
	}

}