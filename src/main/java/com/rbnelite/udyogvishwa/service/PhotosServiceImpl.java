package com.rbnelite.udyogvishwa.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.PhotosDao;
import com.rbnelite.udyogvishwa.model.Photos;

@Service
public class PhotosServiceImpl implements PhotosService {

	@Resource
	private PhotosDao photosdao;

	@Override
	@Transactional
	public void addPhoto(String userMail, String imageName,String photoTitle, String photoDescription) {

		Photos photos = new Photos();

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();

		photos.setPhotoPath(imageName);
		photos.setPostdate(dateFormat.format(date));
		photos.setUserMail(userMail);
		photos.setPhotoTitle(photoTitle);
		photos.setPhotoDescription(photoDescription);
		
		photosdao.addPhoto(photos);
	}

	@Override
	public List<Photos> ShowPhotos(String userMail) {

		return photosdao.ShowPhotos(userMail);
	}

}
