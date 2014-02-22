package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.LikeStatus;

@Repository
public class LikeStatusDaoImpl extends BaseDao<LikeStatus> implements LikeStatusDao {

	public LikeStatusDaoImpl()
	{
		super(LikeStatus.class);
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void LikeTheStatus(LikeStatus likestatus) {
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(likestatus);
		session.getTransaction().commit();
		session.flush();
	}
	@Override
	@Transactional
	public List<LikeStatus> listLikeStatus() {
		return sessionFactory.getCurrentSession().createQuery("from LikeStatus").list();
	}

}
