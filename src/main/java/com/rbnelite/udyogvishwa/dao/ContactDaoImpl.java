package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;

@Repository
public class ContactDaoImpl extends BaseDao<Index> implements ContactDao {
	
	public ContactDaoImpl()	{
		super(Index.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveContact(Index index) {
	
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		
		Query query=session.createQuery("update Index i set i.homeAddress=:homeAddress, i.officeAddress=:officeAddress, i.telephone=:telephone where i.emailId=:emailId ");
		
		query.setParameter("homeAddress", index.getHomeAddress());
		query.setParameter("officeAddress", index.getOfficeAddress());
		query.setParameter("telephone", index.getTelephone());
		query.setParameter("emailId", "mayur@gmail.com");
		query.executeUpdate();
		session.getTransaction().commit();
		session.flush();
		
	}

}
