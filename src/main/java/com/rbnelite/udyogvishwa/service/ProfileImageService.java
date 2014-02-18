package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.model.ProfileImages;

public interface ProfileImageService {

	public void insertProfileImage(String fileName, String userName);

	public List<ProfileImages> getProfileImage(String UserMail);

	public void UpdateProfileImage(String fileName, String userName);
}
