package com.rbnelite.udyogvishwa.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.engine.profile.Fetch;

@Entity
@Table(name = "status")
public class Status {

	@Id
	@Column(name = "status_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "status_sequence_id")
	@SequenceGenerator(name = "status_sequence_id", sequenceName = "status_sequence", allocationSize = 1)
	private int id;

	@Column(name = "post")
	private String status;

	@Column(name = "post_date")
	private String statusDate;

	@OneToMany(fetch=FetchType.EAGER)
	@JoinColumn(name = "status_id")
	private List<Comment> comments;
	
	@OneToMany
	@JoinColumn(name = "status_id")
	private List<LikeStatus> likeStatus ;
	
	@Column(name = "email")
	private String usermail;
	
	
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

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public List<LikeStatus> getLikeStatus() {
		return likeStatus;
	}

	public void setLikeStatus(List<LikeStatus> likeStatus) {
		this.likeStatus = likeStatus;
	}

}
