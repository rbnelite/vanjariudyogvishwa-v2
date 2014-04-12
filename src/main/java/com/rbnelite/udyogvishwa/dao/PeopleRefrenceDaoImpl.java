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
	public List<IntrestAreas> peopleYouMayKnow(String userMail) {
		String anil="budgeanil@gmail.com";
		
		Session session = sessionFactory.openSession();
		try {
			
			/*(
					"select I.emailId, I.firstName, I.lastName, Pi.profileImage from IntrestAreas Ia, Index I, ProfileImages Pi"
					+ " where Ia.userMail = I.emailId and I.emailId = Pi.userMail"
					+ "")*/
			
			
			return session
					.createQuery("select I.emailId, I.firstName, I.lastName, Pi.profileImage from IntrestAreas Ia, Index I, ProfileImages Pi where Ia.userMail = I.emailId and I.emailId = Pi.userMail and I.emailId not in (select F.requestTo from FriendRequest F  where F.requestFrom = '"+userMail+"' and F.requestStatus = 'Accept') and I.emailId not in (select F.requestFrom from FriendRequest F where F.requestTo = '"+userMail+"' and F.requestStatus = 'Accept') and I.emailId not in (select F.requestTo from FriendRequest F where F.requestFrom = '"+userMail+"' and F.requestStatus = 'Pending')and I.emailId not in (select F.requestFrom from FriendRequest F where F.requestTo = '"+userMail+"' and F.requestStatus = 'Pending')")
					.list();  
			
			
		} finally {
			session.close();
		}

	}
}
