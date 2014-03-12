package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.ChangePassword;

@Repository
public class ChangePasswordDaoImpl extends BaseDao<ChangePassword> implements
		ChangePasswordDao {

	public ChangePasswordDaoImpl() {
		super(ChangePassword.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void changePassword(ChangePassword changepassword) {

		String newpass = changepassword.getNewPassword();
		String oldpass = changepassword.getPassword();
		String uemail = changepassword.getUser_email();

		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();

			Query query = session
					.createQuery("update ChangePassword set Password=:newpassword where Password=:oldpass and user_email=:uemail");

			query.setParameter("oldpass", oldpass);
			query.setParameter("uemail", uemail);
			query.setParameter("newpassword", newpass);

			query.executeUpdate();
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}

}
