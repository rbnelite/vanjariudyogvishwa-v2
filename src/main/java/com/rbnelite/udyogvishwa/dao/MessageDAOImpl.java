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
		/*return session.createQuery("from Message m where m.msgSenderID='"+msgSenderID+"' and m.msgReceiverID='"+msgReceiverID+"' or m.msgSenderID='"+msgReceiverID+"' and m.msgReceiverID='"+msgSenderID+"' ORDER BY msgID DESC").list();*/
		
		return session.createQuery("SELECT m.msgSenderID, m.msgReceiverID, m.msgDate, m.myMsgText ,u.firstName,u.lastName FROM Message m ,Index u "
			       + " where (m.msgSenderID='"+msgSenderID+"'  AND m.msgReceiverID='"+msgReceiverID+"' AND (u.emailId='"+msgReceiverID+"')) OR "
			       + "(m.msgSenderID='"+msgReceiverID+"'  AND m.msgReceiverID='"+msgSenderID+"'  AND (u.emailId='"+msgReceiverID+"')) ORDER BY m.msgID DESC ").list();
		
		
		/*return session.createQuery("Select m.msgSenderID, m.msgReceiverID,m.msgDate,m.myMsgText,pi.profileImage "
				+ " from Message m,ProfileImages pi where m.msgSenderID='"+msgSenderID+"' and m.msgSenderID=pi.userMail and m.msgReceiverID='"+msgReceiverID+"' and m.msgReceiverID=pi.userMail"
				+ " or m.msgSenderID='"+msgReceiverID+"' and m.msgSenderID=pi.userMail and m.msgReceiverID='"+msgSenderID+"' and m.msgReceiverID=pi.userMail ORDER BY msgID DESC").list();*/
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
			
			/*return session.createQuery("FROM Message where msgReceiverID ='"+userMail+"' union FROM Message where msgSenderID='"+userMail+"' ").list();*/
			
			return session.createQuery("select I.emailId,I.firstName, I.middleName, I.lastName, pi.profileImage "
					+ " FROM Index I, ProfileImages pi "
						+ " where I.emailId in(select msg.msgSenderID from Message msg "
							+ " where msg.msgReceiverID ='"+userMail+"' and msg.msgSenderID = pi.userMail) "
						+ " or I.emailId in(select msg.msgReceiverID from Message msg "
							+ " where msg.msgSenderID ='"+userMail+"' and msg.msgReceiverID = pi.userMail) ").list();
		}
		finally
		{
			session.close();
		}
	}

	

}
