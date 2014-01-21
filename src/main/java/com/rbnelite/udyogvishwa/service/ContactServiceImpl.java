package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.ContactDao;
import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.model.Contact;

@Service
public class ContactServiceImpl implements ContactService {

	@Resource 
	private ContactDao contactdao;
	
	@Override
	public void SaveContact(ContactCredential contactcredential) {
		Contact contact=new Contact();
		contact.setHomeAddress(contactcredential.getHomeAddress());
		contact.setOfficeAddress(contactcredential.getOfficeAddress());
		contact.setTelephoneNo(contactcredential.getTelephoneNo());
		contactdao.saveContact(contact);

	}

}
