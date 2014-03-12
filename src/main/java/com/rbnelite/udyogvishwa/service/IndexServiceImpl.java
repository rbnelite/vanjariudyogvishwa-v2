package com.rbnelite.udyogvishwa.service;

import java.util.List;

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
		Index index = new Index();
		String pass1 = indexcredential.getPassword();
		String pass2 = indexcredential.getPassword2();
			if (pass1.equals(pass2)) {
			index.setFirstName(indexcredential.getFirstName());
			index.setMiddleName(indexcredential.getMiddleName());
			index.setLastName(indexcredential.getLastName());
			index.setEmailId(indexcredential.getEmailId());
			index.setContactNo(indexcredential.getContactNo());
			index.setGender(indexcredential.getGender());
			index.setBirthDate(indexcredential.getBirthDate());
			index.setPassword(indexcredential.getPassword());
			index.setContactId(indexcredential.getContactId());
			index.setHomeAddress(indexcredential.getHomeAddress());
			index.setReligion(indexcredential.getReligion());
			index.setSubCast(indexcredential.getSubCast());
			index.setOfficeAddress(indexcredential.getOfficeAddress());
			index.setTelephone(indexcredential.getTelephone());

			indexdao.saveRegistration(index);

		} 
			else
			{
				System.out.println("password is not same");
			}

	}

	@Override
	public List searchUserList(String SearchData) {

		return indexdao.searchUserList(SearchData);
	}
	
	public List<Index> loginAuthintication(String emailId, String pwd) {

		return indexdao.loginAuthintication(emailId, pwd);
	}

}
