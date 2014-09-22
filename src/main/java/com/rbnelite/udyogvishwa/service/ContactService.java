package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.Index;


public interface ContactService {
	
	public void SaveContact(ContactCredential contactcredential);
	public List<Contact> listContact(String UserMail);
	public void UpdateContact(Index indexContact);
	
}