package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.HobbiesCredential;
import com.rbnelite.udyogvishwa.model.Hobbies;

public interface HobbiesService {
	
	public void saveHobbies(HobbiesCredential hobbiescredential);
	public List<Hobbies> listHobbies();

}
