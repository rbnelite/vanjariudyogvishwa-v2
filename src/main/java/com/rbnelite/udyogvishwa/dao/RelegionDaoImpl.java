package com.rbnelite.udyogvishwa.dao;



import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Religion;

@Repository
public class RelegionDaoImpl extends BaseDao<Religion> implements RelegionDao {
	
	public RelegionDaoImpl(){
		super(Religion.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertRelegion(Religion religion) {
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(religion);
		session.getTransaction().commit();
		session.flush();
		
		
				
	}

	@Override
	public List<Religion> listReligion() {
		String name="manoj";
		 return sessionFactory.getCurrentSession().createQuery("from Religion  where usermail='"+name+"'")
	                .list();
	}
}
