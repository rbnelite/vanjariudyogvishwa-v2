package com.rbnelite.udyogvishwa.dto;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class ProfileImageCredential {
	private int profile_img_id;
	private String profileImage;
	private String userMail;
	
	public int getProfile_img_id() {
		return profile_img_id;
	}
	@XmlElement
	public void setProfile_img_id(int profile_img_id) {
		this.profile_img_id = profile_img_id;
	}
	public String getProfileImage() {
		return profileImage;
	}
	@XmlElement
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public String getUserMail() {
		return userMail;
	}
	@XmlElement
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
}
