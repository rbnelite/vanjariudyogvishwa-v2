package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;

@Repository
public class IndexDaoImpl extends BaseDao<Index> implements IndexDao {

	@Autowired
	 private SessionFactory sessionFactory;
	
	public IndexDaoImpl()
	{
		super(Index.class);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveRegistration(Index index) {
		Session session=sessionFactory.openSession();
		try{
		session.getTransaction().begin();
		session.save(index);
		session.getTransaction().commit();
		session.flush();
		}finally{
			session.close();
		}
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List searchUserList(String SearchData) {
		
		Session session=sessionFactory.openSession();
		try{
		Criteria criteria=session.createCriteria(Index.class);
		
		Criterion firstName=Restrictions.ilike("firstName", SearchData,MatchMode.ANYWHERE);
		Criterion middleName=Restrictions.ilike("middleName",SearchData,MatchMode.ANYWHERE);
		Criterion lastName=Restrictions.ilike("lastName", SearchData,MatchMode.ANYWHERE);
		LogicalExpression orExp=Restrictions.or(firstName, middleName);
		LogicalExpression orExp1=Restrictions.or(orExp, lastName);
		criteria.add(orExp1);
			
		return criteria.list();
		}finally{
			session.close();
		}
	}
	
	@Override
	@Transactional
	public List<Index> loginAuthintication(String emailId, String pwd) {
		Session session=sessionFactory.openSession();
		try{
			
		Query query = session.createQuery("FROM Index where emailId= :emailId and password=:pwd");
		
		query.setParameter("emailId", emailId);
		query.setParameter("pwd", pwd);
		
		return query.list();
		
		}finally{
			session.close();
		}
	}

}
