
package com.rbnelite.udyogvishwa.dao;


import java.util.List;




import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.OtherDetails;


@Repository
public class OtherDetailsDaoImpl extends BaseDao<OtherDetails> implements OtherDetailsDao  {

		
	public OtherDetailsDaoImpl() {
		super(OtherDetails.class);
		
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertOtherDetails(OtherDetails otherDetail) {
		
		/*Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(otherDetail);
		session.getTransaction().commit();
		session.flush();*/
		
		Session session=sessionFactory.openSession();
		try{
			
			session.getTransaction().begin();
			session.save(otherDetail);
			session.getTransaction().commit();
			session.flush();
		}
	
		finally
		{
			session.close();
		}
	
	}


	@Override
	@Transactional
	public List<OtherDetails> listOtherDetails(String userMail) {
		
		Session session=sessionFactory.openSession();
		try{
		return session.createQuery("from OtherDetails where usermail='"+userMail+"'")
                .list();
		}
		finally{
			session.close();
		}
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
		
		Session session=sessionFactory.openSession();
		try{
			session.getTransaction().begin();
			session.update(otherDetails2Update);
			session.getTransaction().commit();
			session.flush();
		
		}
		finally
		{
			session.close();
		}
	}

	@Override
	@Transactional
	public OtherDetails getOtherDetailsByEmailId(String userMail) {
	     
		Session session=sessionFactory.openSession();
		try{
		return (OtherDetails) session.createQuery("from OtherDetails where usermail='"+userMail+"' ").uniqueResult();
	}      
	      finally
	      {
	    	  session.close();
	      }
	}
	


}
