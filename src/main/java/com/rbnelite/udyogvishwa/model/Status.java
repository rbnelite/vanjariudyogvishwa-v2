package com.rbnelite.udyogvishwa.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

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
	
	@OneToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "email", referencedColumnName = "email", insertable=false, updatable=false)
	private ProfileImages profileImages;
	
	/*@Column(name = "email")
	private String usermail;*/
	
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "email", referencedColumnName = "email")
	private Index user;
	
	
	
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

	/*public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}*/

	public List<LikeStatus> getLikeStatus() {
		return likeStatus;
	}

	public void setLikeStatus(List<LikeStatus> likeStatus) {
		this.likeStatus = likeStatus;
	}

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
