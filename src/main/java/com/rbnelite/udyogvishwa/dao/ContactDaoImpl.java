package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Contact;

@Repository
public class ContactDaoImpl extends BaseDao<Contact> implements ContactDao {
	
	public ContactDaoImpl()	{
		super(Contact.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveContact(Contact Contact) {
	Session session=sessionFactory.openSession();
	session.getTransaction().begin();
	session.save(Contact);
	session.getTransaction().commit();
	session.flush();

	}

}
