package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Message;

public interface MessageDAO {

	public void insertMessage(Message msg);

	public List<Message> listMessage(String msgSenderID, String msgReceiverID);

	public List<Message> listMessagedFriends(String userMail);
	
	

	

}
