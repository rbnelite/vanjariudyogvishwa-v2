package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.OccupationCredential;
import com.rbnelite.udyogvishwa.model.Occupation;

public interface OcccupationService {
	public void insertOccupation(OccupationCredential insCredential);
	
	public List searchPeopleByProffession(String SearchDatabyprofession);
	
	public List<Occupation> listOccupation(String userMail);
	public void updateOccupation(Occupation occupation);
	public Occupation getByEmailId(String userMail);
	
}