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
	@Transactional
	public EducationWork getByEmailId(String userMail)
	 {
		System.out.println("From getByEmailID() in EducationWorkDaoImpl.java");
		
		Session session=sessionFactory.openSession();
		try{
			return (EducationWork) session.createQuery("from EducationWork where userMail='"+userMail+"' ").uniqueResult();
		}
		finally
		{
			session.close();
		}
	 }
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertEducationWork(EducationWork educationWork){
		
		
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(educationWork);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}
	
	
	@Override
	@Transactional
	public List<EducationWork> listEducationWork(String userMail) {
		String email=userMail;
		Session session=sessionFactory.openSession();
		try{
			return session.createQuery("from EducationWork where userMail='"+email+"' ").list();
		}finally{
			session.close();
		}
	}

	@Override
	@Transactional
	public void updateEducation(EducationWork educationWork) {
		
		EducationWork eduToUpdate=getByEmailId(educationWork.getUserMail());
				
		eduToUpdate.setSchool(educationWork.getSchool());
		eduToUpdate.setCollage(educationWork.getCollage());
		eduToUpdate.setGraduation(educationWork.getGraduation());
		eduToUpdate.setOtherGraduation(educationWork.getOtherGraduation());
		eduToUpdate.setPGCollege(educationWork.getPGCollege());
		eduToUpdate.setPGDegree(educationWork.getPGDegree());
		eduToUpdate.setOtherPG(educationWork.getOtherPG());
		Session session=sessionFactory.openSession();
		try{
			session.getTransaction().begin();
			session.update(eduToUpdate);
			session.getTransaction().commit();
			session.flush();
			
		}
		finally
		
		{ 
			session.close();
		}
	}

}
