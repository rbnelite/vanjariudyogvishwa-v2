package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.Index;

@Repository
public class ContactDaoImpl extends BaseDao<Index> implements ContactDao {
	
	public ContactDaoImpl()	{
		super(Index.class);
	}
	
	@Override
	@Transactional
	public Index getContactByEmailId(String userMail)
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
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveContact(Index index) {
	
		Session session=sessionFactory.openSession();
		try {
			session.getTransaction().begin();

			Query query = session
					.createQuery("update Index i set i.homeAddress=:homeAddress, i.officeAddress=:officeAddress, i.telephone=:telephone where i.emailId=:emailId ");

			query.setParameter("homeAddress", index.getHomeAddress());
			query.setParameter("officeAddress", index.getOfficeAddress());
			query.setParameter("telephone", index.getTelephone());
			query.setParameter("emailId", index.getEmailId());
			query.executeUpdate();
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}

	@Override
	public List<Contact> listContact(String UserMail) {
					
			return sessionFactory.getCurrentSession().createQuery("from Index where emailId='"+UserMail+"'").list();
		
	}

	@Override
	public void UpdateContact(Contact contact) {
				
		Index contactToUpdate=getContactByEmailId(contact.getUserMail());
		
		contactToUpdate.setHomeAddress(contact.getHomeAddress());
		contactToUpdate.setOfficeAddress(contact.getOfficeAddress());
		contactToUpdate.setTelephone(contact.getTelephone());
		
		Session session=sessionFactory.openSession();
		try{
			session.getTransaction().begin();
			session.update(contactToUpdate);
			session.getTransaction().commit();
			session.flush();
			
		}
		finally
		
		{ 
			session.close();
		}
		
	}

}
