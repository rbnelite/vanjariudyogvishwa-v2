package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Index;


@Repository
public class IndexDaoImpl extends BaseDao<Index> implements IndexDao {

	
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
		/*Criteria criteria=session.createCriteria(Index.class);
				
		Criterion firstName=Restrictions.ilike("firstName", SearchData,MatchMode.ANYWHERE);
		Criterion middleName=Restrictions.ilike("middleName",SearchData,MatchMode.ANYWHERE);
		Criterion lastName=Restrictions.ilike("lastName", SearchData,MatchMode.ANYWHERE);
		Criterion emailId=Restrictions.ilike("emailId", SearchData, MatchMode.ANYWHERE);
		LogicalExpression orExp=Restrictions.or(firstName, middleName);
		LogicalExpression orExp1=Restrictions.or(orExp, lastName);
		LogicalExpression orExp2=Restrictions.or(orExp1, emailId);
		
		criteria.add(orExp2);*/
			
				
		/* Criteria criteria2=session.createCriteria(ProfileImages.class);
		 * projectionList.add(Projections.property("orExp1.emailId"));
		criteria3.setProjection(projectionList);
		Criterion ll=Restrictions.eq("userMail", criteria3);*/
		
		/*List<Index> SearchedUser=criteria.list();
		for(Index index: SearchedUser){
			System.out.println(index.getDisplayName()+": "+index.getEmailId());
			criteria2.add(Restrictions.eq("userMail", index.getEmailId()));
		}*/
		
		return session.createQuery("select i.firstName, i.lastName,pi.profileImage,o.occupation,o.companyName,i.emailId,i.homeAddress, E.PGDegree,E.otherPG,o.webAddress,i.contactNo,i.middleName from Occupation o, Index i,ProfileImages pi,EducationWork E "
				+ "where ( i.firstName like concat('%','"+SearchData+"','%') or i.middleName like concat('%','"+SearchData+"','%') or i.lastName like concat('%','"+SearchData+"','%') or i.emailId like concat('%','"+SearchData+"','%') or i.contactNo like concat('%','"+SearchData+"','%') or i.homeAddress like concat('%','"+SearchData+"','%') ) "
						+ "and i.emailId=o.usermail and pi.userMail=o.usermail and i.emailId=E.userMail").list();
		
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
