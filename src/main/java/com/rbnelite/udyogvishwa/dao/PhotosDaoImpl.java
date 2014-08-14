package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.LikePhoto;
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
	public List<Photos> ShowPhotos(String userMail) {
		Session session=sessionFactory.openSession();
		try{
			
			List<Photos> l1 = session.createQuery("select P.photoTitle, P.photoDescription,P.postdate, P.photoPath, I.firstName,I.lastName,P.id from Photos P,Index I where P.userMail=I.emailId order by P.id desc").list();
			
			return l1;
		}
		finally{
			session.close();
		}
		}

	@Override
	@Transactional
	public void LikeThePhoto(LikePhoto likePhoto) {
		
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(likePhoto);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
		
	}

	@Override
	@Transactional
	public List<LikePhoto> listLikePhoto() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from LikePhoto").list();
		} finally {
			session.close();
		}
	}

}
