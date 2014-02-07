package com.rbnelite.udyogvishwa.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;

@Repository
public class RelegionDaoImpl extends BaseDao<Index> implements RelegionDao {

	public RelegionDaoImpl() {
		super(Index.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertRelegion(Index index) {
		/*Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(religion);
		session.getTransaction().commit();
		session.flush();
*/
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		
		Query query=session.createQuery("update Index i set i.religion=:religion, i.subCast=:subCast where i.emailId=:emailId ");
		
		query.setParameter("religion", index.getReligion());
		query.setParameter("subCast", index.getSubCast());
		query.setParameter("emailId", "mayur@gmail.com");
		query.executeUpdate();
		session.getTransaction().commit();
		session.flush();
		
	}

}
