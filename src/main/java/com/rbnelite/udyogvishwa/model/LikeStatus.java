package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="like_status")
public class LikeStatus {
	
	@Id
	@Column(name="like_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="likestatus_sequence_id")
	@SequenceGenerator(name="likestatus_sequence_id", sequenceName="like_status_sequence",allocationSize=1)
	private int id;
	
	@Column(name="status")
	private boolean myReply;
	
	@Column(name="email")
	private String whoLike;
	
	@Column(name="status_id")
	private int statusId;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getWhoLike() {
		return whoLike;
	}
	public void setWhoLike(String whoLike) {
		this.whoLike = whoLike;
	}
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public boolean getMyReply() {
		return myReply;
	}
	public void setMyReply(boolean myReply) {
		this.myReply = myReply;
	}

}
