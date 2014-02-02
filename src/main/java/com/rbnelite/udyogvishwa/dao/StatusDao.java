package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Status;

public interface StatusDao {
	
	public void statusUpdate(Status status);
	public List<Status> listStatus();
	
	

}
