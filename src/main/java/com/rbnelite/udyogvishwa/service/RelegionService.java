package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.model.Religion;

public interface RelegionService {

	public void insertRelegion(ReligionCredential religioncredential);
	
	public List<Religion> listReligion();
}
