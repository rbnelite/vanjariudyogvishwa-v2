package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Occupation;

public interface OccupationDao {
	public void insertOccupation1(Occupation ocmodel);
	
	public List searchPeopleByProffession(String SearchDatabyprofession);

}
