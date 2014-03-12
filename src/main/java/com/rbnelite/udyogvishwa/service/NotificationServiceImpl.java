package com.rbnelite.udyogvishwa.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.NotificationDao;
import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Notification;


@Service 
public class NotificationServiceImpl implements NotificationService {
	
	@Resource
	private NotificationDao notificationdao;

	@Override
	public void insertNotification(CommentCredential commentCredential, Integer CommentId) {
		
		System.out.println("from Insert Notification Service Impl"+CommentId);
		Notification notification=new Notification();
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		
		String noti=commentCredential.getWhoseComment()+"commented on your status : "+commentCredential.getCommenttext();
		String flag="0";
		notification.setNotification(noti);
		notification.setDatetime(dateFormat.format(date));
		notification.setUsermail(commentCredential.getWhoseComment());
		notification.setDisplayflag(flag);
		notification.setStatusId(Integer.parseInt(commentCredential.getStatusIdForComment()));;
	
		notification.setCommentId(CommentId);
		
		System.out.println("hw r u???");
		
		
		notificationdao.insertNotification(notification);
}

	@Override
	
	public List<Notification> listNotification(String userMail) {
		// TODO Auto-generated method stub
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

	

	
	

}
