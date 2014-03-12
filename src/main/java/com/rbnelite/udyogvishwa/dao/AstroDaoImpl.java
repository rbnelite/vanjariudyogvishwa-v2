package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.Hobbies;

@Repository
public class AstroDaoImpl extends BaseDao<Astro> implements AstroDao {

	@Autowired
	private SessionFactory sessionFactory;

	public AstroDaoImpl() {
		super(Astro.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void saveAstro(Astro astro) {

		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(astro);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}

	}

	@Override
	@Transactional
	public List<Astro> listAstro(String userMail) {

		Session session = sessionFactory.openSession();
		try {
			return session.createQuery(
					"from Astro where userMail='" + userMail + "'").list();
		} finally {
			session.close();
		}

	}

	@Override
	@Transactional
	public void updateAstro(Astro astro) {
		Astro astroToChange = getAstroByEmailId(astro.getUserMail());

		System.out.println(astro.getCountry() + "@123@" + astro.getUserMail());

		astroToChange.setCity(astro.getCity());
		astroToChange.setCountry(astro.getCountry());
		astroToChange.setState(astro.getState());
		astroToChange.setZodiac(astro.getZodiac());

		Session session = sessionFactory.openSession();
		try {
			session.update(astroToChange);
		} finally {
			session.close();
		}

	}

	@Override
	@Transactional
	public Astro getAstroByEmailId(String userMail) {

		Session session = sessionFactory.openSession();
		try {
			return (Astro) session.createQuery(
					"from Astro where userMail='" + userMail + "'")
					.uniqueResult();

		} finally {
			session.close();
		}
	}

}
