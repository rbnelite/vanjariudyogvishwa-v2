package com.rbnelite.udyogvishwa.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.NotificationDao;
import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Notification;


@Service 
public class NotificationServiceImpl implements NotificationService {
	
	@Resource
	private NotificationDao notificationdao;

	@Override
	public void insertNotification(CommentCredential commentCredential, Integer CommentId) {
		
		Notification notification=new Notification();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
				
		String flag="0";
		
		notification.setDatetime(dateFormat.format(date));
		notification.setUsermail(commentCredential.getWhoseComment());
		notification.setDisplayflag(flag);
		notification.setStatusId(Integer.parseInt(commentCredential.getStatusIdForComment()));
		notification.setCommentId(CommentId);
		
		notificationdao.insertNotification(notification);
}

	@Override
	public List<Notification> listNotification(String userMail) {
	
		return notificationdao.listNotification(userMail);
	}

	@Override
	public List<Notification> deleteNotification(Integer notif) {
	
		return notificationdao.deleteNotification(notif);
	}

	@Override
	public List<Notification> listNotificationAll(String userMail) {
		
		return notificationdao.listNotificationAll(userMail);
	}

	@Override
	public void changeNotificationStatus(String userMail) {
		notificationdao.changeNotificationStatus(userMail);
		
	}
}