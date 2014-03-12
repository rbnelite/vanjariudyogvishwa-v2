package com.rbnelite.udyogvishwa.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "comments")
public class Comment {

	@Id
	@Column(name = "comment_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "comments_sequence_id")
	@SequenceGenerator(name = "comments_sequence_id", sequenceName = "comments_sequence", allocationSize = 1)
	private int id;

	@Column
	private String comment;

	/*
	 * @Column(name="comment_whom") private String whoseComment;
	 */

	@Column(name = "status_id")
	private int statusId;

	@Column(name = "comment_on")
	private String commentOn;

	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "comment_whom", referencedColumnName = "email")
	private Index user;
	

@OneToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "comment_whom", referencedColumnName = "email", insertable=false, updatable=false)
	private ProfileImages profileImages;

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

	/*
	 * public String getWhoseComment() { return whoseComment; } public void
	 * setWhoseComment(String whoseComment) { this.whoseComment = whoseComment;
	 * }
	 */
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
	/*
	 * public Index getIndex() { return index; } public void setIndex(Index
	 * index) { this.index = index; }
	 */

	public Index getUser() {
		return user;
	}

	public void setUser(Index user) {
		this.user = user;
	}

	public ProfileImages getProfileImages() {
		return profileImages;
	}

	public void setProfileImages(ProfileImages profileImages) {
		this.profileImages = profileImages;
	}
}
