package com.rbnelite.udyogvishwa.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Manoj;

@Repository
public class ManojDaoImpl extends BaseDao<Manoj> implements ManojDao {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	public ManojDaoImpl() {
		super(Manoj.class);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void registerManoj(Manoj manoj) {
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(manoj);
		session.getTransaction().commit();
		session.flush();
		

	}

	@Override
	public List<Manoj> listManoj() {
		
		 return sessionFactory.getCurrentSession().createQuery("from Manoj")
	                .list();
	}

	

	

}
