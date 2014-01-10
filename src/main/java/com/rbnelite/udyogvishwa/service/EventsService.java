package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.EventsCredential;
import com.rbnelite.udyogvishwa.model.Events;

public interface EventsService {
	
	public void insertEvents(EventsCredential eventscredential);
	public List<Events> listEvents();
}

