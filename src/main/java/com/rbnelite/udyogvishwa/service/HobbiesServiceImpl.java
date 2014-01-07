package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.HobbiesDao;
import com.rbnelite.udyogvishwa.dto.HobbiesCredential;
import com.rbnelite.udyogvishwa.model.Hobbies;

@Service
public class HobbiesServiceImpl implements HobbiesService {

	@Resource
	private HobbiesDao hobbiesdao;
	
	@Override
	public void saveHobbies(HobbiesCredential hobbiescredential) {
	Hobbies hobby=new Hobbies();
	hobby.setHobbies(hobbiescredential.getHobbies());
	hobby.setFavouriteMusic(hobbiescredential.getFavouriteMusic());
	hobby.setFavouriteBooks(hobbiescredential.getFavouriteBooks());
	hobby.setDressStyletyle(hobbiescredential.getDressStyletyle());
	hobby.setFavouritrTvShows(hobbiescredential.getFavouritrTvShows());
	hobby.setFavouriteMovies(hobbiescredential.getFavouriteMovies());
	hobby.setSports(hobbiescredential.getSports());
	hobby.setFoodIcook(hobbiescredential.getFoodIcook());
	hobby.setVacationDestination(hobbiescredential.getVacationDestination());
	
	hobbiesdao.saveHobbies(hobby);
	}

}
