package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="comment")
public class Comment {
	
	@Id
	@Column(name="commentid")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="comment_sequence_id")
	@SequenceGenerator(name="comment_sequence_id",sequenceName="comment_sequence",allocationSize=1)
	private int id;
	
	@Column
	private String comment;
	
	@Column(name="whosecoment")
	private String whoseComment;
	
	@Column
	private int statusId;
	
	@Column
	private String commentOn;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getWhoseComment() {
		return whoseComment;
	}
	public void setWhoseComment(String whoseComment) {
		this.whoseComment = whoseComment;
	}
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public String getCommentOn() {
		return commentOn;
	}
	public void setCommentOn(String commentOn) {
		this.commentOn = commentOn;
	}
	

}
