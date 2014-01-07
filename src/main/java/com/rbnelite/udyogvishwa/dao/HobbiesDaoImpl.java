package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Hobbies;

@Repository
public class HobbiesDaoImpl extends BaseDao<Hobbies> implements HobbiesDao {

	public HobbiesDaoImpl()
	{
		super(Hobbies.class);
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveHobbies(Hobbies hobbies) {
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(hobbies);
		session.getTransaction().commit();
		session.flush();
		
	}

}
