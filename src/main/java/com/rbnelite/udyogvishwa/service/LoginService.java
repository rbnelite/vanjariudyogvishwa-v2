package com.rbnelite.udyogvishwa.service;

import com.rbnelite.udyogvishwa.dto.Credential;
import com.rbnelite.udyogvishwa.model.Login;

public interface LoginService {
	public boolean authenticate(String userId, String password);
	public void insertRecord(Credential credential);
}
