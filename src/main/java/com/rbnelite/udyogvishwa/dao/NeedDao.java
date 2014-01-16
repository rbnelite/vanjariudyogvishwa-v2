package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Need;

public interface NeedDao {

	public void insertNeed(Need need);
	public List<Need> listNeeds();
}
