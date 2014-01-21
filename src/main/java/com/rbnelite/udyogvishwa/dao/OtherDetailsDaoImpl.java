/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.OtherDetails;

/**
 * @author PC3
 *
 */
@Repository
public class OtherDetailsDaoImpl extends BaseDao<OtherDetails> implements OtherDetailsDao  {

	@Autowired
	 private SessionFactory sessionFactory;
	
	public OtherDetailsDaoImpl() {
		super(OtherDetails.class);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertOtherDetails(OtherDetails otherDetail) {
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(otherDetail);
		session.getTransaction().commit();
		session.flush();
	}

	@Override
	@Transactional
	public List<OtherDetails> listOtherDetails() {
		
		String email="sawantmanojm@gmail.com";
		return sessionFactory.getCurrentSession().createQuery("from OtherDetails where usermail='"+email+"'")
                .list();
	}

}
