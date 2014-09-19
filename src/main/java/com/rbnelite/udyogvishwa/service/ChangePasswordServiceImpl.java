package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.ChangePasswordDao;
import com.rbnelite.udyogvishwa.dao.IndexDao;
import com.rbnelite.udyogvishwa.dto.ChangePasswordCredential;
import com.rbnelite.udyogvishwa.dto.LoginUser;
import com.rbnelite.udyogvishwa.model.ChangePassword;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Service
public class ChangePasswordServiceImpl implements ChangePasswordService{

	@Resource
	private ChangePasswordDao changepassdao;
	@Resource
	private IndexDao indexdao;
	
	@Override
	public Boolean savePassword(ChangePasswordCredential changepasscred) {
		
		LoginUser loginUser = RequestContext.getUser();
		String userMail=loginUser.getEmail();

		ChangePassword cp=new ChangePassword();
		
		cp.setUser_email(userMail);
		cp.setNewPassword(changepasscred.getNewPassword());
		cp.setPassword(changepasscred.getPassword());
		
		List<Index> OldList= indexdao.loginAuthintication(cp.getUser_email(), cp.getPassword());
		
		if(!OldList.isEmpty()){
			changepassdao.changePassword(cp);
			return true;
		}
		else{
			return false;
		}
	}
}