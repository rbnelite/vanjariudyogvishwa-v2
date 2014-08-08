package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Photos;

public interface PhotosService {
	
	public void addPhoto(String userMail, String imageName,String photoTitle, String photoDescription);
	public List<Photos> ShowPhotos(String userMail);

}