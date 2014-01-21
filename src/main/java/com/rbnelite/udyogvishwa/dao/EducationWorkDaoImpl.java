package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.EducationWork;

@Repository
public class EducationWorkDaoImpl extends BaseDao<EducationWork>implements EducationWorkDao {
	
	public EducationWorkDaoImpl(){
	
       super(EducationWork.class);	
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertEducationWork(EducationWork educationWork){
		
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(educationWork);
		session.getTransaction().commit();
		session.flush();
	}
	
	
	@Override
	@Transactional
	public List<EducationWork> listEducationWork() {
		String email="sawantmanojm@gmail.com";
		return sessionFactory.getCurrentSession().createQuery("from EducationWork where userMail='"+email+"' ").list();
	}

}
