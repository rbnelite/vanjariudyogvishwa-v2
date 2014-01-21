/**
 * 
 */
package com.rbnelite.udyogvishwa.service;

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
		Message msg=new Message();
		
		msg.setMsgReceiverID("sawantmanojm@gmail.com");
		msg.setMsgSenderID(msgdto.getSenderID());
		msg.setMsgDate(msgdto.getMessageDate());
		msg.setMsg(msgdto.getMessageText());
		msgDao.insertMessage(msg);
	}


	

	
}
