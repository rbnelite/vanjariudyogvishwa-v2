package com.rbnelite.udyogvishwa.dao;


import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Registration;

@Repository
public class RegistrationDaoImpl extends BaseDao<Registration> implements RegistrationDao {

	public RegistrationDaoImpl() {
		super(Registration.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void RegisterUser1(Registration registration)
	{
		Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(registration);
		session.getTransaction().commit();
		session.flush();
	}
	
	

}
