package com.rbnelite.udyogvishwa.dao;






import java.util.List;

import com.rbnelite.udyogvishwa.model.Index;


public interface IndexDao {
	public void saveRegistration(Index index);
	public List<Index> LoginAuthintication(String emailId, String pwd);
	public List searchUserList(String SearchData);
	
}
