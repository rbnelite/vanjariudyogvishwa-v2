package com.rbnelite.udyogvishwa.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.LifeStyle;

@Repository
public class LifeStyleDaoImpl extends BaseDao<LifeStyle> implements LifeStyleDao {

	

	@Autowired
    private SessionFactory sessionFactory;
	

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


	@Override
	public List<LifeStyle> listLifeStyle(String userMail) {
		
		return sessionFactory.getCurrentSession().createQuery("from LifeStyle where usermail='"+userMail+"'").list();
	}


}
