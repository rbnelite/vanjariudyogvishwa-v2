package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.model.Index;

public interface RelegionService {

	public void insertRelegion(ReligionCredential religioncredential);
	
	public List<Index> listReligion(String UserMail);
	
	public void UpdateReligion(Index index);

}