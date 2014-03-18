/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Distinct;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Restrictions;
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
		try
		{
		session.getTransaction().begin();
		session.save(msg);
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
	public List<Message> listMessage(String msgSenderID, String msgReceiverID) {
		
	   Session session=sessionFactory.openSession();
	   try{
		return session.createQuery("from Message m where m.msgSenderID='"+msgSenderID+"' and m.msgReceiverID='"+msgReceiverID+"' or m.msgSenderID='"+msgReceiverID+"' and m.msgReceiverID='"+msgSenderID+"' ORDER BY msgID DESC").list();
	   }
	   finally
	   {
		   session.close();
	   }
	   }

	@Override
	@Transactional
	public List<Message> listMessagedFriends(String userMail) {
			
		Session session=sessionFactory.openSession();
		try{
			return session.createQuery("FROM Message where msgReceiverID ='"+userMail+"' union FROM Message where msgSenderID='"+userMail+"' ").list();
		}
		finally
		{
			session.close();
		}
	}

	

}
