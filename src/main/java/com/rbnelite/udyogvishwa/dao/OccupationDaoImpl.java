package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Occupation;

@Repository
public class OccupationDaoImpl extends BaseDao<Occupation> implements
		OccupationDao {

	public OccupationDaoImpl() {

		super(Occupation.class);

	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertOccupation1(Occupation ocmodel) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(ocmodel);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}

	@Override
	public List searchPeopleByProffession(String SearchDatabyprofession) {
		Session session=sessionFactory.openSession();
		/*"from Occupation where occupation like concat('%','"+SearchDatabyprofession+"','%')"*/
		try{
		return session.createQuery("select i.firstName, i.lastName,pi.profileImage,o.occupation,o.companyName,i.emailId,i.homeAddress, E.PGDegree,E.otherPG,o.webAddress,i.contactNo from Occupation o, Index i,ProfileImages pi,EducationWork E where o.occupation like concat('%','"+SearchDatabyprofession+"','%') and i.emailId=o.usermail and pi.userMail=o.usermail and i.emailId=E.userMail").list();
		}
		finally
		{
			session.close();
		}
		
	}
}
