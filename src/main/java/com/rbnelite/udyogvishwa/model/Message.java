/**
 * 
 */
package com.rbnelite.udyogvishwa.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * @author PC3
 *
 */

@Entity
@Table(name="message")
public class Message {

	@Id
	@Column(name="messageid")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="message_sequence_id")
	@SequenceGenerator(name="message_sequence_id", sequenceName="message_sequence",allocationSize=1)
	private int msgID;
	
	@Column(name="senderid")
	private String msgSenderID;
	
	@Column(name="receiverid")
	private String msgReceiverID;
	
	@Column(name="messagedate")
	private String msgDate;
	
	@Column(name="messagetxt")
	private String msgText;
	
	public long getMsgID() {
		return msgID;
	}
	public void setMsgID(int msgID) {
		this.msgID = msgID;
	}
	public String getMsgSenderID() {
		return msgSenderID;
	}
	public void setMsgSenderID(String msgSenderID) {
		this.msgSenderID = msgSenderID;
	}
	public String getMsgReceiverID() {
		return msgReceiverID;
	}
	public void setMsgReceiverID(String msgReceiverID) {
		this.msgReceiverID = msgReceiverID;
	}
	public String getMsgDate() {
		return msgDate;
	}
	public void setMsgDate(String msgDate) {
		Date dNow=new Date();
        SimpleDateFormat ft=new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a ");
        String now_date = ft.format(dNow);
        msgDate=now_date;
		this.msgDate = msgDate;
	}
	public String getMsg() {
		return msgText;
	}
	public void setMsg(String msgText) {
		this.msgText = msgText;
	}

	
}
