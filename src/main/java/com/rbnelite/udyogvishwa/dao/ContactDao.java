package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Contact;
import com.rbnelite.udyogvishwa.model.EducationWork;
import com.rbnelite.udyogvishwa.model.Hobbies;
import com.rbnelite.udyogvishwa.model.Index;

public interface ContactDao {
	
	public void saveContact(Index index);
	public List<Contact> listContact(String UserMail);
	public void UpdateContact(Contact contact);
	public Index getContactByEmailId(String userMail);

	

}
  