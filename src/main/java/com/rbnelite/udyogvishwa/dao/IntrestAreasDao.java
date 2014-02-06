package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.IntrestAreas;


public interface IntrestAreasDao {

	public void insertIntrestAreas(IntrestAreas intrestarea);
	public List<IntrestAreas> listIntrestAreas(String userMail);
	public IntrestAreas getIntrestAreasByEmailId(String userMail);
	public void UpdateIntrestAreas(IntrestAreas intrestAreas);
}
