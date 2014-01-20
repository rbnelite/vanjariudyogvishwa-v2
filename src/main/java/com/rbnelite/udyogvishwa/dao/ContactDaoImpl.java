package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Contact;

@Repository
public class ContactDaoImpl extends BaseDao<Contact> implements ContactDao {
	
	
	@Autowired
    private SessionFactory sessionFactory;
	
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

	@Override
	public List<Contact> listContact() {
		String name="manoj";
		return sessionFactory.getCurrentSession().createQuery("from Contact where userMail='"+name+"'")
                .list();
	}

}
