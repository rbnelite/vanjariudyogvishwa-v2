package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Status;

@Repository
public class StatusDaoImpl extends BaseDao<Status> implements StatusDao {

	
	@Autowired
    private SessionFactory sessionFactory;
	
	public StatusDaoImpl()
	{
		super(Status.class);
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void statusUpdate(Status status) 
	{
		Session session= sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(status);
		session.getTransaction().commit();
		session.flush();
	}
	@Override
	public List<Status> listStatus() {
		
		return sessionFactory.getCurrentSession().createQuery("from Status").list();
	}

}
