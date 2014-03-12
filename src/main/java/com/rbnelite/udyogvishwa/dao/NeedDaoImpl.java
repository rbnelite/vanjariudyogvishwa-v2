package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Need;

@Repository
public class NeedDaoImpl extends BaseDao<Need> implements NeedDao {

	public NeedDaoImpl() {
		super(Need.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertNeed(Need need) {

		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(need);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional
	public List<Need> listNeeds() {

		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Need").list();
		} finally {
			session.close();
		}
	}

}
