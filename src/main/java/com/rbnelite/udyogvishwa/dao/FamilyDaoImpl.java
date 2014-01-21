/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Family;


/**
 * @author PC3
 *
 */
@Repository
public class FamilyDaoImpl extends BaseDao<Family> implements FamilyDao {

	
	@Autowired
    private SessionFactory sessionFactory;
	
	public FamilyDaoImpl() {
		super(Family.class);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertFamily(Family family) {
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(family);
		session.getTransaction().commit();
		session.flush();
		
	}

}
