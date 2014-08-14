package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.LikePhoto;
import com.rbnelite.udyogvishwa.model.Photos;

public interface PhotosDao {
	
	public void addPhoto(Photos photos);
	
	public List<Photos> ShowPhotos(String userMail);
	
	public void LikeThePhoto(LikePhoto likePhoto);
	public List<LikePhoto> listLikePhoto();
}
