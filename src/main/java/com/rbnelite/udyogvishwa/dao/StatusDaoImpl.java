package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Status;


@Repository
public class StatusDaoImpl extends BaseDao<Status> implements StatusDao {

	
	public StatusDaoImpl() {
		super(Status.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void statusUpdate(Status status) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(status);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}

	}

	@Override
	@Transactional
	public List<Status> listStatus(String userMail) {
		Session session = sessionFactory.openSession();
		
				
		try {
			session.beginTransaction();
/*
			String hql = "from Status S where (S.user.emailId in (select F1.requestFrom from FriendRequest F1 where F1.requestTo='"
					+ userMail
					+ "' "
					+ "and requestStatus='Accept') or S.user.emailId in(select F2.requestTo from FriendRequest F2 where F2.requestFrom='"
					+ userMail
					+ "' and requestStatus='Accept'))"
					+ " or S.user.emailId='" + userMail + "' ORDER BY S.id DESC";
*/			
			

			String hql = "from Status S where (S.user.emailId in (select F1.requestFrom from FriendRequest F1 where F1.requestTo='"
					+ userMail
					+ "' "
					+ "and requestStatus='Accept') or S.user.emailId in(select F2.requestTo from FriendRequest F2 where F2.requestFrom='"
					+ userMail
					+ "' and requestStatus='Accept'))"
					+ " or S.user.emailId='" + userMail + "' ORDER BY S.id DESC";

			
			
			
			Query query = session.createQuery(hql);
			session.getTransaction().commit();
			session.flush();
			return query.list();
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public List searchStatusList(String SearchData) {

		Session session = sessionFactory.openSession();
		try {
			return session.createQuery(
					"from Status where status like concat('%','" + SearchData
							+ "','%')").list();
		} finally {
			session.close();
		}
	}
	
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void updateStatus(String myStatus, String statusId) {
		Session session = sessionFactory.openSession();
		try{
		session.getTransaction().begin();

		Integer id1 = Integer.parseInt(statusId);
		Query query = session
				.createQuery("update Status set status = :status1 where id = :id");
		query.setParameter("status1", myStatus);
		query.setParameter("id", id1);
		query.executeUpdate();
		session.getTransaction().commit();
		session.flush();
	}
	finally
		{
	    	session.close();
		}
	}

}
