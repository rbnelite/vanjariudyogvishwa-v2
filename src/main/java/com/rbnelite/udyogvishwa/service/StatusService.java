package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.StatusCredential;
import com.rbnelite.udyogvishwa.model.Status;

public interface StatusService {
	
	public void SaveStatusUpdate(StatusCredential statuscredential);
	public List<Status> listStatus();
	

}
