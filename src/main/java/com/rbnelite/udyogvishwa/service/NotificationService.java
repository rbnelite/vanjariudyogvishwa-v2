package com.rbnelite.udyogvishwa.service;

import java.util.List;
import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Notification;

public interface NotificationService {

	public void insertNotification(CommentCredential  commentCredential, Integer CommentId);
	
	public List <Notification>listNotification(String userMail);
	public List<Notification> deleteNotification(Integer notif);
	public List<Notification> listNotificationAll(String userMail);
}
