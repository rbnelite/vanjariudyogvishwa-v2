package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="status")
public class Status {
	
	@Id
	@Column(name="statusid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="status_sequence_id")
	@SequenceGenerator(name="status_sequence_id",sequenceName="status_sequence",allocationSize=1)
	private int id;
	
	@Column(name="post")
	private String status;
	
	@Column(name="postdate")
	private String statusDate;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStatusDate() {
		return statusDate;
	}
	public void setStatusDate(String statusDate) {
		this.statusDate = statusDate;
	}
	
}
