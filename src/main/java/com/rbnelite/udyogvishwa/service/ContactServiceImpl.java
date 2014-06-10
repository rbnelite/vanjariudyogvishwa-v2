package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.ContactDao;
import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.Index;

@Service
public class ContactServiceImpl implements ContactService {

	@Resource 
	private ContactDao contactdao;
	
	@Override
	public void SaveContact(ContactCredential contactcredential) {
		
		Index index=new Index();
		
		index.setHomeAddress(contactcredential.getHomeAddress());
		index.setOfficeAddress(contactcredential.getOfficeAddress());
		index.setTelephone(contactcredential.getTelephoneNo());
		index.setEmailId(contactcredential.getUserMail());
		/*index.setId(67);*/
		contactdao.saveContact(index);

	}

	@Override
	@Transactional
	public List<Contact> listContact(String UserMail) {

		return contactdao.listContact(UserMail);
	}

	@Override
	public void UpdateContact(Contact contact) {
		
		contactdao.UpdateContact(contact);
		
	}

}
