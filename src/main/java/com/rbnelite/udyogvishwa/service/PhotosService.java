package com.rbnelite.udyogvishwa.service;

import java.util.List;

public interface PhotosService {
	
	public void addPhoto(String userMail, String imageName);
	public List ShowPhotos(String userMail);

}
