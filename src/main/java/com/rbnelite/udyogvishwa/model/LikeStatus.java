package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="likestatus")
public class LikeStatus {
	
	@Id
	@Column(name="likeid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="likestatus_sequence_id")
	@SequenceGenerator(name="likestatus_sequence_id", sequenceName="likestatus_sequence",allocationSize=1)
	private int id;
	
	@Column
	private int count;
	
	@Column(name="names")
	private String whoLike;
	
	@Column(name="satausid")
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
	public String getWhoLike() {
		return whoLike;
	}
	public void setWhoLike(String whoLike) {
		this.whoLike = whoLike;
	}
	public String getStatusId() {
		return statusId;
	}
	public void setStatusId(String statusId) {
		this.statusId = statusId;
	}

}
