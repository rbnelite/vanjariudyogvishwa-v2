package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Event;

public interface EventsDao {

	public void insertEvents(Event events);
	public List<Event> listEvents();
	
}

