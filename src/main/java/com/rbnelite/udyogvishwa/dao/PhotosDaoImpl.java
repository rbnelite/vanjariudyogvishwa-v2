package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Photos;

@Repository
public class PhotosDaoImpl extends BaseDao<Photos> implements PhotosDao {

	
	public PhotosDaoImpl()
	{
		super(Photos.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void addPhoto(Photos photos) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.openSession();
		try{
		session.getTransaction().begin();
		session.save(photos);
		session.getTransaction().commit();
		session.flush();
		System.out.println("--------------dao");
		}
		finally
		{
			session.close();
		}
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List ShowPhotos(String userMail) {
		Session session=sessionFactory.openSession();
		try{
		return session.createQuery("from Photos P where P.userMail='"+userMail+"'").list();
		}
		finally{
			session.close();
		}
		}

}
