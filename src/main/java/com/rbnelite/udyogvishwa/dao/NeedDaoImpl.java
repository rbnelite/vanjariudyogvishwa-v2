package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Need;

@Repository
public class NeedDaoImpl extends BaseDao<Need>  implements NeedDao {
	
	public NeedDaoImpl(){
		super(Need.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertNeed(Need need){
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(need);
		session.getTransaction().commit();
		session.flush();
	}

	@Override
	@Transactional
	public List<Need> listNeeds() {
	
		return sessionFactory.getCurrentSession().createQuery("from Need").list();
	}
 
}
