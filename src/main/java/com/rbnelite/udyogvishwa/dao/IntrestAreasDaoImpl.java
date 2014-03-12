
package com.rbnelite.udyogvishwa.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.IntrestAreas;

@Repository
public class IntrestAreasDaoImpl extends BaseDao<IntrestAreas> implements IntrestAreasDao {

	@Autowired
    private SessionFactory sessionFactory;
	

	
	public IntrestAreasDaoImpl(){
		
		super(IntrestAreas.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertIntrestAreas(IntrestAreas intrestareas) {
		

		Session session=sessionFactory.openSession();
		try{
		session.getTransaction().begin();
		session.save(intrestareas);

		session.getTransaction().commit();
		session.flush();
		}finally{
			session.close();
		}
	}

	@Override
	@Transactional
	public List<IntrestAreas> listIntrestAreas(String userMail) {
		Session session=sessionFactory.openSession();
		try{
		
				return session.createQuery("from IntrestAreas where userMail='"+userMail+"' ").list();
				
		}finally{
			session.close();
		}
	}

	@Override
	@Transactional
	public IntrestAreas getIntrestAreasByEmailId(String userMail) {
		Session session=sessionFactory.openSession();
		try{
		return (IntrestAreas) session.createQuery("from IntrestAreas where userMail='"+userMail+"' ").uniqueResult();
		}finally{
			session.close();
		}
	}

	@Override
	@Transactional
	public void UpdateIntrestAreas(IntrestAreas intrestAreas) {
		Session session = sessionFactory.openSession();
		try{
		IntrestAreas intrestAreas2Update=getIntrestAreasByEmailId(intrestAreas.getUserMail());
		intrestAreas2Update.setInterestId(intrestAreas.getInterestId());
		session.update(intrestAreas2Update);
		}finally{
			session.close();
		}
	}

}

