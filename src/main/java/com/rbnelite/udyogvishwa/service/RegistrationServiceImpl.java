package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.RegistrationDao;
import com.rbnelite.udyogvishwa.dto.RegistrationCredential;
import com.rbnelite.udyogvishwa.model.Registration;

@Service
public class RegistrationServiceImpl implements RegistrationService {
	
	@Resource
	private RegistrationDao registrationdao;

	@Override
	public void RegisterUser(RegistrationCredential regcredential) {
		Registration registration=new Registration();
		registration.setFirst_name(regcredential.getFirst_name());
		registration.setMiddle_name(regcredential.getMiddle_name());
		registration.setLast_name(regcredential.getLast_name());
		registration.setEmail_id(regcredential.getEmail_id());
		registration.setMobile_no(regcredential.getMobile_no());
		registration.setBirth_date(regcredential.getBirth_date());
		registration.setGender(regcredential.getGender());
		registration.setPassword(regcredential.getPassword());
		
		registrationdao.RegisterUser1(registration);
		
	}

}
