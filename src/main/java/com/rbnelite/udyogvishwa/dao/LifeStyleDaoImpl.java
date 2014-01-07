package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.LifeStyle;

@Repository
public class LifeStyleDaoImpl extends BaseDao<LifeStyle> implements LifeStyleDao {

	
	public LifeStyleDaoImpl() {
		super(LifeStyle.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertLifeStyle(LifeStyle lifestyle) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(lifestyle);
		session.getTransaction().commit();
		session.flush();
	}

}
