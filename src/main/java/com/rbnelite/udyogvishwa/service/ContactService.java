package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.ContactCredential;
import com.rbnelite.udyogvishwa.model.Contact;

public interface ContactService {
	public void SaveContact(ContactCredential contactcredential);
	public List<Contact> listContact();

}
