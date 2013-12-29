package com.rbnelite.udyogvishwa.service;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.LoginDao;
import com.rbnelite.udyogvishwa.dto.Credential;
import com.rbnelite.udyogvishwa.model.Login;

@Service
public class LoginServiceImpl implements LoginService {
	 
	@Resource
	private LoginDao loginDao;
	
	@Override
	public boolean authenticate(String userId, String password) {
		if(userId == null && password == null)
			throw new RuntimeException("User id and password can't be null");
		
		Login login = loginDao.getLogin(userId);
		
		if(login == null)
			return false;
		
		return (userId.equals(login.getUserId()) && password.equals(login.getPassword()));
	}

	@Override
	public void insertRecord(Credential credential) {
		Login login = new Login();
		login.setId(3L);
		login.setUserId(credential.getLoginId());
		login.setPassword(credential.getPassword());
		
		loginDao.insertRecord(login);
		
	}
}
