package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.ProfileImageDao;

import com.rbnelite.udyogvishwa.model.ProfileImages;

@Service
public class ProfileImageServiceImpl implements ProfileImageService {

	@Resource
	ProfileImageDao profileimagedao;
	
	@Override
	
	public void insertProfileImage(String fileName, String userMail) {
		ProfileImages profileimage=new ProfileImages();
		profileimage.setProfileImage(fileName);
		profileimage.setUserMail(userMail);
		
	 profileimagedao.insertProfileImage(profileimage);

	}

	@Override
	public List<ProfileImages> getProfileImage(String UserMail) {
		
		return profileimagedao.getProfileImage(UserMail);
	}
	
	@Override
	public void UpdateProfileImage(String fileName, String userName) {
			profileimagedao.UpdateProfileImage(fileName, userName);	
	}


}
