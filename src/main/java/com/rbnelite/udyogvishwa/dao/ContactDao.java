package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Contact;

public interface ContactDao {
	
	public void saveContact(Contact Contact);
	
	public List<Contact> listContact();

}
  