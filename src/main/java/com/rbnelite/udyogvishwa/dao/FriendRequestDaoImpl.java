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
		
			return session.createQuery("Select F.requestFrom, Pi.profileImage, O.companyName,O.occupation"
					+ " from  FriendRequest F, ProfileImages Pi,Occupation O"
					+ "  where F.requestTo ='"+userMail+"'"
					+ " and F.requestStatus='"+pending+"' and F.requestFrom = Pi.userMail and F.requestFrom = O.usermail").list();
		}finally{
			session.close();
		}
		
	   
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
	
		return session.createQuery("select I.firstName, I.lastName,F.requestFrom,F.requestTo,Pi.profileImage, O.companyName,O.occupation,I.homeAddress"
				+ " from FriendRequest F, Index I, ProfileImages Pi,Occupation O where F.requestFrom = '"+userMail+"' and "
						+ " F.requestStatus = 'Accept' and F.requestTo = I.emailId and I.emailId = Pi.userMail and I.emailId=O.usermail or"
						+ " F.requestTo = '"+userMail+"' and F.requestStatus = 'Accept' and F.requestFrom = I.emailId and "
								+ "I.emailId = Pi.userMail and I.emailId=O.usermail").list();
		}finally{
			session.close();
		}
	}
}
