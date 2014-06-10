package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.EventsDao;
import com.rbnelite.udyogvishwa.dto.EventsCredential;
import com.rbnelite.udyogvishwa.model.Event;

@Service
public class EventsServiceImpl implements EventsService{

@Resource 
private EventsDao eventsdao;

@Override
public void insertEvents(EventsCredential eventscredential)
{
	Event events=new Event();
	events.setName(eventscredential.getName());
	events.setDetails(eventscredential.getDetails());
	events.setLocation(eventscredential.getLocation());
	events.setDatatime(eventscredential.getDatatime());
	events.setUsermail(eventscredential.getUsermail());
	
	eventsdao.insertEvents(events);
}

@Override
@Transactional
public List<Event> listEvents()
	{
		return eventsdao.listEvents();
	}
}