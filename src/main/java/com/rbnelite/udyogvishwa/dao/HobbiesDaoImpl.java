package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Hobbies;

@Repository
public class HobbiesDaoImpl extends BaseDao<Hobbies> implements HobbiesDao {

	public HobbiesDaoImpl() {
		super(Hobbies.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void saveHobbies(Hobbies hobbies) {

		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(hobbies);
			session.getTransaction().commit();
			session.flush();
			
		} finally {
			session.close();
		}

	}

	@Override
	@Transactional
	public List<Hobbies> listHobbies(String userMail) {
		Session session = sessionFactory.openSession();
		try {
			session = sessionFactory.openSession();
			return session.createQuery(
					"from Hobbies where usermail='" + userMail + "'").list();
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional
	public Hobbies getHobbiesByEmailId(String userMail) {
		Session session = sessionFactory.openSession();
		try {
			session = sessionFactory.openSession();
			return (Hobbies) session.createQuery(
					"from Hobbies where usermail='" + userMail + "'")
					.uniqueResult();
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional
	public void UpdateHobbies(Hobbies hobbies) {

		Hobbies hobbiesToUpdate = getHobbiesByEmailId(hobbies.getUsermail());

		System.out.println("1" + hobbies.getDressStyletyle());

		hobbiesToUpdate.setDressStyletyle(hobbies.getDressStyletyle());
		hobbiesToUpdate.setFavouriteBooks(hobbies.getFavouriteBooks());
		hobbiesToUpdate.setFavouriteMovies(hobbies.getFavouriteMovies());
		hobbiesToUpdate.setFavouriteMusic(hobbies.getFavouriteMusic());
		hobbiesToUpdate.setFavouritrTvShows(hobbies.getFavouritrTvShows());
		hobbiesToUpdate.setFoodIcook(hobbies.getFoodIcook());
		hobbiesToUpdate.setHobbiesName(hobbies.getHobbiesName());
		hobbiesToUpdate.setSports(hobbies.getSports());
		hobbiesToUpdate
				.setVacationDestination(hobbies.getVacationDestination());

		Session session = sessionFactory.openSession();
		try {
			
			session.getTransaction().begin();
			session.update(hobbiesToUpdate);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}

}
