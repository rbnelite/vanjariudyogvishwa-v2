package com.rbnelite.udyogvishwa.dto;

public class NotificationDto {
	private int notification_id;
	private String datetime;
	private String usermail;
	private int statusId;
	private int commentId;
	private String displayflag;
	public String getDisplayflag() {
		return displayflag;
	}
	public void setDisplayflag(String displayflag) {
		this.displayflag = displayflag;
	}
	
	public int getNotification_id() {
		return notification_id;
	}
	public void setNotification_id(int notification_id) {
		this.notification_id = notification_id;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	public int getStatusId() {
		return statusId;
	}
	public void setStatusId(int statusId) {
		this.statusId = statusId;
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

		
	
	
	
}
