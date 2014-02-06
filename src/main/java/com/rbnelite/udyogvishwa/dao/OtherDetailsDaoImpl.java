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
		System.out.println("From OtherDetailsDaoImpl Record inserted successfully");
	}


	@Override
	@Transactional
	public List<OtherDetails> listOtherDetails(String userMail) {
		
		
		return sessionFactory.getCurrentSession().createQuery("from OtherDetails where usermail='"+userMail+"'")
                .list();
	}

	@Override
	@Transactional
	public void updateOtherDetails(OtherDetails otherDetails) {
		OtherDetails otherDetails2Update=getOtherDetailsByEmailId(otherDetails.getUsermail());
		
		otherDetails2Update.setCulturalact(otherDetails.getCulturalact());
		otherDetails2Update.setPolyticalact(otherDetails.getPolyticalact());
		otherDetails2Update.setPolyticalstatus(otherDetails.getPolyticalstatus());
		otherDetails2Update.setSocialact(otherDetails.getSocialact());
		otherDetails2Update.setSocialStatus(otherDetails.getSocialStatus());
		
		sessionFactory.getCurrentSession().update(otherDetails2Update);
		
	}

	@Override
	@Transactional
	public OtherDetails getOtherDetailsByEmailId(String userMail) {
	
		return (OtherDetails) sessionFactory.getCurrentSession().createQuery("from OtherDetails where usermail='"+userMail+"' ").uniqueResult();
	}


}
