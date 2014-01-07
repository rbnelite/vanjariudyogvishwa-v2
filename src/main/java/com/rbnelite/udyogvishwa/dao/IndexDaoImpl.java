package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;

@Repository
public class IndexDaoImpl extends BaseDao<Index> implements IndexDao {

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

}
