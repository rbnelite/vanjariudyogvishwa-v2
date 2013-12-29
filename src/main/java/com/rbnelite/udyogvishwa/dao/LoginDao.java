package com.rbnelite.udyogvishwa.dao;

import com.rbnelite.udyogvishwa.model.Login;

public interface LoginDao {

	public Login getLogin(String userId);
	public void insertRecord(Login login);
}