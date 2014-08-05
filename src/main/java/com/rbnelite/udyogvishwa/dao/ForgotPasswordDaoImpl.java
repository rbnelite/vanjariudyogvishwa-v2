package com.rbnelite.udyogvishwa.dao;
import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;

@Repository
public class ForgotPasswordDaoImpl extends BaseDao<Index> implements ForgotPasswordDao {
	
	
	public ForgotPasswordDaoImpl()
	{
		super(Index.class);
	}
	
	@Override
	@Transactional
	public String getOldPassword(String emailAddress) {
		Session session = sessionFactory.openSession();
		try {
		List tempuserPass=session.createQuery("select password from Index where emailId='"+emailAddress+"' ").list();
		if (!tempuserPass.isEmpty()) {
			System.out.println("is list empty: "+tempuserPass.isEmpty());
			String tempStr = (String) tempuserPass.get(0);
			System.out.println("@@@#@#" + tempStr);

			return tempStr;
		} else {
			return null;
		}
		}finally{
			session.close();
		}
	}
}

