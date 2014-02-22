package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.ChangePasswordDao;
import com.rbnelite.udyogvishwa.dto.ChangePasswordCredential;
import com.rbnelite.udyogvishwa.model.ChangePassword;

@Service
public class ChangePasswordServiceImpl implements ChangePasswordService{

	@Resource
	private ChangePasswordDao changepassdao;
	
	@Override
	public void savePassword(ChangePasswordCredential changepasscred) {
		
		ChangePassword cp=new ChangePassword();
		
		String newpass=changepasscred.getNewPassword();
		String repass=changepasscred.getRePassword();
		
		if(newpass.equals(repass))
		{
			cp.setUser_email(changepasscred.getUser_email());
			cp.setNewPassword(changepasscred.getNewPassword());
			cp.setPassword(changepasscred.getPassword());
			
			changepassdao.changePassword(cp);
		}
		
	}

}
