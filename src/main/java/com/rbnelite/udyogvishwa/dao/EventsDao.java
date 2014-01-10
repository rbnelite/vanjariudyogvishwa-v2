package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Events;

public interface EventsDao{

	public void insertEvents(Events events);
	public List<Events> listEvents();
	
}

