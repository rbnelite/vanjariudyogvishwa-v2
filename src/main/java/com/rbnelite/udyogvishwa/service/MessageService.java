
package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.MessageDTO;
import com.rbnelite.udyogvishwa.model.Message;

public interface MessageService {

	public void addMessage(MessageDTO msgdto, String msgReceiverID);

	public List<Message> listMessage(String msgSenderID, String msgReceiverID);

	public List<Message> listMessagedFriends(String userMail);

}
