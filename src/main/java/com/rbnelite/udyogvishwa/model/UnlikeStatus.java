package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity 
@Table(name="unlikeStatus")
public class UnlikeStatus {

	@Id
	@Column(name="unlikeid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="unlikestatus_sequence_id")
	@SequenceGenerator(name="unlikestatus_sequence_id",sequenceName="unlikestatus_sequence",allocationSize=1)
	private int id;
	
	@Column
	private int count;
	
	@Column(name="names")
	private String whoUnlike;
	
	@Column(name="statusid")
	private String statusId;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getWhoUnlike() {
		return whoUnlike;
	}
	public void setWhoUnlike(String whoUnlike) {
		this.whoUnlike = whoUnlike;
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}
	
}
