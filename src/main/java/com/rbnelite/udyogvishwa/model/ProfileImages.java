package com.rbnelite.udyogvishwa.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="profile_images")
public class ProfileImages implements Serializable {

	@Id
	@Column(name="profile_img_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="profileimages_sequence_id")
	@SequenceGenerator(name="profileimages_sequence_id",sequenceName="profileimages_sequence",allocationSize=1)
	private int profile_img_id;
	
	@Column(name="profile_img_path")
	private String profileImage;
	
	@Column(name="email")
	private String userMail;
	
	public int getProfile_img_id() {
		return profile_img_id;
	}
	public void setProfile_img_id(int profile_img_id) {
		this.profile_img_id = profile_img_id;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	

public String getDisplayPhoto() {
		StringBuilder sb = new StringBuilder();
		
		if(this.profileImage != null)
				sb.append(this.profileImage);
		
		return sb.toString();
}
	
}
