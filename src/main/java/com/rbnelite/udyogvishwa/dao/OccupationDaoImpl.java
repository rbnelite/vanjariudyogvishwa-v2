package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Occupation;

@Repository
public class OccupationDaoImpl extends BaseDao<Occupation>implements OccupationDao {

	public OccupationDaoImpl(){
		
		super(Occupation.class);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertOccupation1(Occupation ocmodel) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(ocmodel);
		session.getTransaction().commit();
		session.flush();
	}
}
