package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.Religion;

@Repository
public class RelegionDaoImpl extends BaseDao<Index> implements RelegionDao {

	public RelegionDaoImpl() {
		super(Index.class);
	}
	
	@Override
	@Transactional
	public Index getReligionByEmailId(String userMail)
	 {
		System.out.println("From getByEmailID() in ContactDaoImpl.java");
		
		Session session=sessionFactory.openSession();
		try{
			return (Index) session.createQuery("from Index where emailId='"+userMail+"' ").uniqueResult();
		}
		finally
		{
			session.close();
		}
	 }
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertRelegion(Index index) {
		/*
		 * Session session = sessionFactory.openSession();
		 * session.getTransaction().begin(); session.save(religion);
		 * session.getTransaction().commit(); session.flush();
		 */
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();

			Query query = session
					.createQuery("update Index i set i.religion=:religion, i.subCast=:subCast where i.emailId=:emailId ");

			query.setParameter("religion", index.getReligion());
			query.setParameter("subCast", index.getSubCast());
			query.setParameter("emailId", index.getEmailId());
			query.executeUpdate();
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}
	
	@Override
	@Transactional
	public List<Index> listReligion(String UserMail) {
					
			return sessionFactory.getCurrentSession().createQuery("from Index where emailId='"+UserMail+"'").list();
		
	}
	
	@Override
	public void UpdateReligion(Index index) {
				
		System.out.println(index.getReligion()+"123"+index.getSubCast()+"123"+index.getEmailId());
		
		Index religionToUpdate=getReligionByEmailId(index.getEmailId());
		
		religionToUpdate.setReligion(index.getReligion());
		religionToUpdate.setSubCast(index.getSubCast());
		
		
		Session session=sessionFactory.openSession();
		try{
			session.getTransaction().begin();
			session.update(religionToUpdate);
			session.getTransaction().commit();
			session.flush();
			
		}
		finally
		
		{ 
			session.close();
		}
		
	}

}
