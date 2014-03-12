package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.ProfileImages;

@Repository
public class ProfileImageDaoImpl extends BaseDao<ProfileImages> implements
		ProfileImageDao {

	public ProfileImageDaoImpl() {
		super(ProfileImages.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertProfileImage(ProfileImages profileimage) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			int temp = (Integer) session.save(profileimage);
			session.getTransaction().commit();
			session.flush();
			System.out.println("googd" + temp);
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional
	public List<ProfileImages> getProfileImage(String UserMail) {

		Session session = sessionFactory.openSession();
		try {
			return session.createQuery(
					"From ProfileImages where userMail='" + UserMail + "' ")
					.list();
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional
	public void UpdateProfileImage(String fileName, String userName) {
		System.out.println("44" + fileName + "777" + userName);
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			Query query = session
					.createQuery("Update ProfileImages set profileImage=:fileName where userMail=:userName");
			query.setParameter("fileName", fileName);
			query.setParameter("userName", userName);
			query.executeUpdate();
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}

}
