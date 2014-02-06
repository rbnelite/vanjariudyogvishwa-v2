package com.rbnelite.udyogvishwa.dao;


import java.util.List;




import com.rbnelite.udyogvishwa.model.Hobbies;

public interface HobbiesDao {
	public void saveHobbies(Hobbies hobbies); 

	public List<Hobbies> listHobbies(String userMail);
	
	public Hobbies getHobbiesByEmailId(String userMail);
	public void UpdateHobbies(Hobbies hobbies);
}
