package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.OccupationCredential;

public interface OcccupationService {
	public void insertOccupation(OccupationCredential insCredential);
	
	public List searchPeopleByProffession(String SearchDatabyprofession);
	

}
