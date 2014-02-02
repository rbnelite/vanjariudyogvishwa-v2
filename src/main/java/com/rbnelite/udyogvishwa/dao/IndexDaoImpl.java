package com.rbnelite.udyogvishwa.dao;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;


@Repository
public class IndexDaoImpl extends BaseDao<Index> implements IndexDao {

	
	
	@Autowired
	 private SessionFactory sessionFactory;
	
	public IndexDaoImpl()
	{
		super(Index.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveRegistration(Index index) {
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(index);
		session.getTransaction().commit();
		session.flush();

	}

	@Override
	@Transactional
	public List<Index> LoginAuthintication(String emailId, String pwd) {
		
		
		return sessionFactory.getCurrentSession().createQuery("FROM Index where emailId='"+emailId+"' and password='"+pwd+"' ").list();
	}

}
