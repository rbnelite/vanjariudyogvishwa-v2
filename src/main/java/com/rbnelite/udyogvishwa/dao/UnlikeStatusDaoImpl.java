package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.UnlikeStatus;

@Repository
public class UnlikeStatusDaoImpl extends BaseDao<UnlikeStatus> implements UnlikeStatusDao {

	public UnlikeStatusDaoImpl()
	{
		super(UnlikeStatus.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void unlikeTheStatus(UnlikeStatus unlikestatus) {
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(unlikestatus);
		session.getTransaction().commit();
		session.flush();

	}

}
