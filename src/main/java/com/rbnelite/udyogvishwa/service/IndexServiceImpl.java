package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.IndexDao;
import com.rbnelite.udyogvishwa.dto.IndexCredential;
import com.rbnelite.udyogvishwa.model.Index;

@Service
public class IndexServiceImpl implements IndexService {

	@Resource
	private IndexDao indexdao;
	
	@Override
	public void saveRegistration(IndexCredential indexcredential) {
		Index index=new Index();
		System.out.println(indexcredential.getPassword1()+"1111");
		String pass1=indexcredential.getPassword1();
		System.out.println(indexcredential.getPassword2()+"2222");
		String pass2=indexcredential.getPassword2();
		if(pass1.equals(pass2))
		{
		System.out.println(indexcredential.getFirstName()+"3333");
		index.setFirstName(indexcredential.getFirstName());
		System.out.println(indexcredential.getMiddleName()+"4444");
		index.setMiddleName(indexcredential.getMiddleName());
		System.out.println(indexcredential.getLastName()+"5555");
		index.setLastName(indexcredential.getLastName());
		System.out.println(indexcredential.getEmailId()+"6666");
		index.setEmailId(indexcredential.getEmailId());
		System.out.println(indexcredential.getContactNo()+"7777");
		index.setContactNo(indexcredential.getContactNo());
		System.out.println(indexcredential.getGender()+"8888");
		index.setGender(indexcredential.getGender());
		System.out.println(indexcredential.getBirthDay()+"9999");
		index.setBirthDate(indexcredential.getBirthDay()+"/"+indexcredential.getBirthMonth()+"/"+indexcredential.getBirthYear());
		System.out.println(indexcredential.getPassword1()+"0000");
		index.setPassword(indexcredential.getPassword1());
		indexdao.saveRegistration(index);
		}
		else
		{
			System.out.println("password is not same");
		}
		
		
		
	}

}
