package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Login;

@Repository
public class LoginDaoImpl extends BaseDao<Login> implements LoginDao {
	
	public LoginDaoImpl() {
		super(Login.class);
	}

	@Override
	public Login getLogin(String userId) {
		Query query = super.getSession().createQuery("from Login l where l.userId = :userId");
		query.setString("userId", userId);
		
		List<Login> result = query.list();
		
		if(result != null && result.isEmpty())		
			return null;
		
		return result.get(0);

	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertRecord(Login login) {
		Session session = sessionFactory.openSession();
		//session.getTransaction().begin();
		session.save(login);
		//session.getTransaction().commit();
		//session.flush();
	}
}
