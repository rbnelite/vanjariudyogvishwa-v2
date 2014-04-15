package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Notification;

public interface NotificationDao {

	public void insertNotification(Notification notification);
	public List <Notification>listNotification(String userMail);
	public List<Notification> deleteNotification(Integer notif);
	public List<Notification> listNotificationAll(String userMail);
	public void changeNotificationStatus(String userMail);
}
