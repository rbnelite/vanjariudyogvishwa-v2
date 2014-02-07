package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.EducationWork;

public interface EducationWorkDao {
	public void insertEducationWork(EducationWork educationwork);
	public List<EducationWork> listEducationWork(String userMail);
	public void updateEducation(EducationWork educationWork);
	public EducationWork getByEmailId(String userMail);
	
}
 