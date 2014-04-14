package com.rbnelite.udyogvishwa.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.rbnelite.udyogvishwa.model.Event;



@Repository
public class EventsDaoImpl extends BaseDao<Event> implements EventsDao{
	
	public EventsDaoImpl(){
	 
	   super(Event.class);

	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertEvents(Event events)
	{
		
		Session session = sessionFactory.openSession();

		try {
			session.getTransaction().begin();
			session.save(events);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<Event> listEvents() {
		
		Session session=sessionFactory.openSession();
		try {
			session.beginTransaction();
	 		
			String hql="select e.name,i.firstName,i.lastName,e.details,e.location,e.datatime from Event e,Index i "
					+ "where e.usermail=i.emailId order by e.eventid DESC" ;
	 		Query query=session.createQuery(hql);
	 		session.getTransaction().commit();
	 		session.flush();
	 		return query.list();
		} finally {
			session.close();
		}
		
			 
	}
}