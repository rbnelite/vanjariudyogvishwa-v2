package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Hobbies;

@Repository
public class HobbiesDaoImpl extends BaseDao<Hobbies> implements HobbiesDao {

	@Autowired
	private SessionFactory sessionFactory;

	public HobbiesDaoImpl() {
		super(Hobbies.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void saveHobbies(Hobbies hobbies) {

		/*
		 * System.out.println(" ##### hobbiesDAOImpl"); Session session =
		 * sessionFactory.openSession(); System.out.println(" #mrk");
		 * session.getTransaction().begin(); System.out.println(" #mrk2");
		 * session.save(hobbies); System.out.println(" #mrk3");
		 * session.getTransaction().commit(); System.out.println(" #mrk4");
		 * session.flush(); System.out.println(" #mrk5");
		 * System.out.println(" @@ hobbiesDAOImpl");
		 */

		Session session = sessionFactory.openSession();
		try {
			session.save(hobbies);
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
			session.update(hobbiesToUpdate);
		} finally {
			session.close();
		}
	}

}
