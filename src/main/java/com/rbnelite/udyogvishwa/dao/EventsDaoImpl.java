package com.rbnelite.udyogvishwa.dao;

import java.util.List;

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
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(events);
		session.getTransaction().commit();
		session.flush();
	}
	
	@Override
	public List<Event> listEvents() {
		 return sessionFactory.getCurrentSession().createQuery("from Event").list();
	}

}
