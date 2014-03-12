package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.FriendRequest;

@Repository
public class FriendRequestDaoImpl extends BaseDao<FriendRequest>implements FriendRequestDao{

	
	@Autowired
    private SessionFactory sessionFactory;
	
	public FriendRequestDaoImpl() {
		super(FriendRequest.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void sendFriendRequest(FriendRequest friendRequest) {
		
		Session session=sessionFactory.openSession();
		try{
		session.getTransaction().begin();
		session.save(friendRequest);
		session.getTransaction().commit();
		session.flush();
		}finally{
			session.close();
		}
	}
	@Override
	@Transactional
	public List<FriendRequest> listFriendRequest(String userMail) {
		
		String pending= "Pending";
		Session session=sessionFactory.openSession();
		try{
		Criteria criteria = session.createCriteria(FriendRequest.class);
		Criterion accept=Restrictions.eq("requestStatus", pending);
		Criterion request_to=Restrictions.eq("requestTo", userMail);
		LogicalExpression andExp=Restrictions.and(accept, request_to);
		return criteria.add(andExp).list();
		}finally{
			session.close();
		}
		/*return sessionFactory.getCurrentSession().createQuery("from FriendRequest where requestTo ='"+userMail+"' ").list();*/
	   
	}
	@Override
	@Transactional
	public void acceptFriendRequest(FriendRequest friendrequest) {
		Session session=sessionFactory.openSession();
		try{
		session.getTransaction().begin();
		Query query=session.createQuery("update FriendRequest set requestStatus=:requestStatus where requestFrom=:requestFrom and requestTo=:requestTo");
		query.setParameter("requestStatus", friendrequest.getRequestStatus());
		
		query.setParameter("requestFrom", friendrequest.getRequestFrom());
	
		query.setParameter("requestTo", friendrequest.getRequestTo());
		
		query.executeUpdate();
		session.getTransaction().commit();
		session.flush();
		}finally{
			session.close();
		}
	}

	@Override
	@Transactional
	public List<FriendRequest> listFriends(String userMail) {
		Session session=sessionFactory.openSession();
		try{
	
		return session.createQuery("select I.firstName, I.lastName,F.requestFrom,F.requestTo,Pi.profileImage from FriendRequest F, Index I, ProfileImages Pi where F.requestFrom = '"+userMail+"' and F.requestStatus = 'Accept' and F.requestTo = I.emailId and I.emailId = Pi.userMail or F.requestTo = '"+userMail+"' and F.requestStatus = 'Accept' and F.requestFrom = I.emailId and I.emailId = Pi.userMail").list();
		}finally{
			session.close();
		}
	}
}
