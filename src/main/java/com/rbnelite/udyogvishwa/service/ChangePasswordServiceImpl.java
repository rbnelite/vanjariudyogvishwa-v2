package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.ChangePasswordDao;
import com.rbnelite.udyogvishwa.dao.IndexDao;
import com.rbnelite.udyogvishwa.dto.ChangePasswordCredential;
import com.rbnelite.udyogvishwa.model.ChangePassword;
import com.rbnelite.udyogvishwa.model.Index;

@Service
public class ChangePasswordServiceImpl implements ChangePasswordService{

	@Resource
	private ChangePasswordDao changepassdao;
	@Resource
	private IndexDao indexdao;
	
	@Override
	public String savePassword(ChangePasswordCredential changepasscred) {
		
		ChangePassword cp=new ChangePassword();
		
		String newpass=changepasscred.getNewPassword();
		String repass=changepasscred.getRePassword();
		String changePwdMessage="";
		
		
		
		if(newpass.equals(repass))
		{
			cp.setUser_email(changepasscred.getUser_email());
			cp.setNewPassword(changepasscred.getNewPassword());
			cp.setPassword(changepasscred.getPassword());
			
			List<Index> OldList= indexdao.loginAuthintication(changepasscred.getUser_email(), changepasscred.getPassword());
			if(!OldList.isEmpty()){
				changepassdao.changePassword(cp);
				changePwdMessage="password changed successfully. Please log out and then logIn again";
				return changePwdMessage;
			}else{
				changePwdMessage="Old pasword is not Correct.";
				return changePwdMessage;
			}
		}else{
			changePwdMessage="New passwords & Conform password are not equal. Please provide equal password.";
			return changePwdMessage;
		}
		
	}

}
