package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
		session.getTransaction().begin();
		session.save(friendRequest);
		session.getTransaction().commit();
		session.flush();
		
	}

	
	@Override
	@Transactional
	public List<FriendRequest> listFriendRequest(String userMail) {
		return sessionFactory.getCurrentSession().createQuery("from FriendRequest where requestTo ='"+userMail+"' ").list();
	   
	}

	@Override
	@Transactional
	public void acceptFriendRequest(FriendRequest friendrequest) {
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		Query query=session.createQuery("update FriendRequest set requestStatus=:requestStatus where requestFrom=:requestFrom and requestTo=:requestTo");
		query.setParameter("requestStatus", friendrequest.getRequestStatus());
		
		query.setParameter("requestFrom", friendrequest.getRequestFrom());
	
		query.setParameter("requestTo", friendrequest.getRequestTo());
		
		query.executeUpdate();
		session.getTransaction().commit();
		session.flush();
	}

	
		

}
