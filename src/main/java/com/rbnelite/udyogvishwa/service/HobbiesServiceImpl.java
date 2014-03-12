package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.HobbiesDao;
import com.rbnelite.udyogvishwa.dto.HobbiesCredential;
import com.rbnelite.udyogvishwa.model.Hobbies;

@Service
public class HobbiesServiceImpl implements HobbiesService {

	@Resource
	private HobbiesDao hobbiesdao;

	@Override
	@Transactional
	public void saveHobbies(HobbiesCredential hobbiescredential) {
		Hobbies hobby = new Hobbies();
		hobby.setHobbiesName(hobbiescredential.getHobbiesName());
		hobby.setFavouriteMusic(hobbiescredential.getFavouriteMusic());
		hobby.setFavouriteBooks(hobbiescredential.getFavouriteBooks());
		hobby.setDressStyletyle(hobbiescredential.getDressStyletyle());
		System.out.println(" @@ hobbiesServiceImpl"+hobbiescredential.getDressStyletyle());
		
		hobby.setFavouritrTvShows(hobbiescredential.getFavouritrTvShows());
		hobby.setFavouriteMovies(hobbiescredential.getFavouriteMovies());
		hobby.setSports(hobbiescredential.getSports());
		hobby.setFoodIcook(hobbiescredential.getFoodIcook());
		hobby.setVacationDestination(hobbiescredential.getVacationDestination());
		hobby.setUsermail(hobbiescredential.getUsermail());
		System.out.println(111111+" hobbies serviceImpl");
		
		
		hobbiesdao.saveHobbies(hobby);
		System.out.println(2222222+" hobbies serviceImpl");
	}

	@Override
	@Transactional
	public List<Hobbies> listHobbies(String userMail) {

		return hobbiesdao.listHobbies(userMail);
	}

	@Override
	public Hobbies getHobbiesByEmailId(String userMail) {
		
		return hobbiesdao.getHobbiesByEmailId(userMail);
	}

	@Override
	public void UpdateHobbies(Hobbies hobbies) {
		
		hobbiesdao.UpdateHobbies(hobbies);
	}

}
