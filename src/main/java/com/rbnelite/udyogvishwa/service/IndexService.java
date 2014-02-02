package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.model.Event;
import com.rbnelite.udyogvishwa.model.Index;

public interface IndexService {
	public void saveRegistration(IndexCredential indexcredential);
	public List searchUserList(String SearchData);
	
	
}
