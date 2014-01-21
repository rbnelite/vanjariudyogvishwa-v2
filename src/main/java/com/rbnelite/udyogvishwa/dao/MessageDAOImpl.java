/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.rbnelite.udyogvishwa.model.Message;

/**
 * @author PC3
 *
 */
@Repository
public class MessageDAOImpl extends BaseDao<Message> implements MessageDAO{

	public MessageDAOImpl() {
		super(Message.class);
		
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertMessage(Message msg) {
		
		
		Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(msg);
		session.getTransaction().commit();
		session.flush();
		
	}

}
