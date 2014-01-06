package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Anil;

@Repository
public class AnilDaoImpl extends BaseDao<Anil> implements AnilDao {
	public AnilDaoImpl() {
		super(Anil.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void RegisterAnil1(Anil abmodel) {
		Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(abmodel);
		session.getTransaction().commit();
		session.flush();

	}

}
