package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table( name = "notifications")
public class Notification {

@Id
@Column(name="notification_id")
@GeneratedValue(strategy= GenerationType.SEQUENCE , generator="notifications_sequence_notification_id")
@SequenceGenerator(name="notifications_sequence_notification_id",sequenceName="notifications_sequence",allocationSize=1)
private int notification_id;

@Column(name="datetime")
private String datetime;


@Column(name="email")
private String usermail;


@Column(name="status_id")
private int statusId;

@Column(name="comment_id")
private int commentId;

@Column(name="display_flag")
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

public void setStatusId(int i) {
	this.statusId = i;
}

public int getCommentId() {
	return commentId;
}

public void setCommentId(int commentId) {
	this.commentId = commentId;
}








}
