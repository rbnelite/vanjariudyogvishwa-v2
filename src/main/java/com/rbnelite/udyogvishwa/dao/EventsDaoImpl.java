package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Events;

@Repository
public class EventsDaoImpl extends BaseDao<Events> implements EventsDao{
	
	
	
	/*@Autowired
    private SessionFactory sessionFactory;*/
	
	public EventsDaoImpl(){
	 
	   super(Events.class);

	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	
	 public void insertEvents(Events events){
		
		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(events);
		session.getTransaction().commit();
		session.flush();
	}
	@Override
	public List<Events> listEvents() {
		 return sessionFactory.getCurrentSession().createQuery("from Events")
	 .list();
	}
            
}
