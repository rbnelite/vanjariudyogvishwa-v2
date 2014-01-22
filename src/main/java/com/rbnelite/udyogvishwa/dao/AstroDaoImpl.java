package com.rbnelite.udyogvishwa.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Astro;

@Repository
public class AstroDaoImpl extends BaseDao<Astro> implements AstroDao {
	

	
	
	@Autowired
    private SessionFactory sessionFactory;
	

	public AstroDaoImpl()
	{
		super(Astro.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveAstro(Astro astro) {
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(astro);
		session.getTransaction().commit();
		session.flush();

	}


	@Override
	public List<Astro> listAstro() {
		
		String email="sawantmanojm@gmail.com";
		return sessionFactory.getCurrentSession().createQuery("from Astro where userMail='"+email+"'")
                .list();
	}


}
