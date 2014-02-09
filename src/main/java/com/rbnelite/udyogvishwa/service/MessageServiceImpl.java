/**
 * 
 */
package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.MessageDAO;
import com.rbnelite.udyogvishwa.dto.MessageDTO;
import com.rbnelite.udyogvishwa.model.Message;

/**
 * @author PC3
 * 
 */
@Service
public class MessageServiceImpl implements MessageService {

	@Resource
	private MessageDAO msgDao;

	@Override
	public void addMessage(MessageDTO msgdto) {
		Message msg = new Message();

		msg.setMsgReceiverID(msgdto.getMsgReceiverID());
		msg.setMsgSenderID(msgdto.getMsgSenderID());
		msg.setMsgDate(msgdto.getMsgDate());
		msg.setMyMsgText(msgdto.getMyMsgText());
		msgDao.insertMessage(msg);
	}

	@Override
	public List<Message> listMessage(String msgSenderID, String msgReceiverID) {

		return msgDao.listMessage(msgSenderID, msgReceiverID);
	}

	@Override
	public List<Message> listMessagedFriends(String userMail) {
		
		return msgDao.listMessagedFriends(userMail);
	}

}
