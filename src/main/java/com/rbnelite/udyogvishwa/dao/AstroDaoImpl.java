package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Astro;

@Repository
public class AstroDaoImpl extends BaseDao<Astro> implements AstroDao {
	
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

}
