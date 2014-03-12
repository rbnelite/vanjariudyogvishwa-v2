package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.IntrestAreas;

@Repository
public class PeopleRefrenceDaoImpl extends BaseDao<IntrestAreas> implements
		PeopleRefrenceDao {
	public PeopleRefrenceDaoImpl() {
		super(IntrestAreas.class);
	}

	@Override
	@Transactional
	public List<IntrestAreas> peopleYouMayKnow() {
		Session session = sessionFactory.openSession();
		try {
			return session
					.createQuery(
							"select Ia.userMail, I.firstName, I.lastName, Pi.profileImage from IntrestAreas Ia, Index I, ProfileImages Pi where Ia.userMail = I.emailId and I.emailId = Pi.userMail")
					.list();
		} finally {
			session.close();
		}

	}
}
