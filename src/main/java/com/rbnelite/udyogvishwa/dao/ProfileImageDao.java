package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.ProfileImages;

public interface ProfileImageDao {

	public void insertProfileImage(ProfileImages profileimage);

	public List<ProfileImages> getProfileImage(String UserMail);

	public void UpdateProfileImage(String fileName, String userName);
}
