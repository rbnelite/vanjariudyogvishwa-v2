/**
 * 
 */
package com.rbnelite.udyogvishwa.dto;

/**
 * @author PC3
 *
 */
public class MessageDTO {

	private String msgSenderID;
	private String msgReceiverID;
	private String msgDate;
	private String myMsgText;
	
	
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
		this.msgDate = msgDate;
	}
	public String getMyMsgText() {
		return myMsgText;
	}
	public void setMyMsgText(String myMsgText) {
		this.myMsgText = myMsgText;
	}
	
		
}
