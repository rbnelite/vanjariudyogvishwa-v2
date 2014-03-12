package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="photos")
public class Photos {

	
	@Id
	@Column(name="photo_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="photos_sequence_id")
	@SequenceGenerator(name="photos_sequence_id",sequenceName="photos_sequence",allocationSize=1)
	private int id;
	
	@Column(name="photo_path")
	private String photoPath;
	
	@Column(name="email")
	private String userMail;
	
	@Column(name="postdate")
	private String postdate;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	
	
}
