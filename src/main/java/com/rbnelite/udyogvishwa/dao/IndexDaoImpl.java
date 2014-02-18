package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
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
	@Transactional(propagation=Propagation.REQUIRED)
	public List searchUserList(String SearchData) {
		
		return sessionFactory.getCurrentSession().createQuery("from Index where firstName like concat('%','"+SearchData+"','%') or middleName like concat('%','"+SearchData+"','%') or lastName like concat('%','"+SearchData+"','%')").list();
	}
	
	@Override
	@Transactional
	public List<Index> loginAuthintication(String emailId, String pwd) {
		Query query = sessionFactory.getCurrentSession().createQuery("FROM Index where emailId= :emailId and password=:pwd");
		query.setParameter("emailId", emailId);
		query.setParameter("pwd", pwd);
		
		return query.list();
	}

}
