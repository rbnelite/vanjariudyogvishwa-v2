package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Notification;
import com.rbnelite.udyogvishwa.model.Status;

@Repository
public class NotificationDaoImpl extends BaseDao<Notification> implements
		NotificationDao {

	public NotificationDaoImpl() {
		super(Notification.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional
	public List<Notification> listNotification(String userMail) {

		Session session = sessionFactory.openSession();
		try {
			return session
					.createSQLQuery(
							"SELECT c.comment,u.first_name, u.last_name, n.notification_id, pi.profile_img_path FROM comments c,users u, notifications n, status s, profile_images pi where s.email='"
									+ userMail
									+ "' and n.display_flag='0'and n.status_id=s.status_id and n.comment_id=c.comment_id and u.email=c.comment_whom and c.comment_whom=pi.email ORDER BY n.notification_id DESC;")
					.list();
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void insertNotification(Notification notification) {

		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();

			session.save(notification);
			session.getTransaction().commit();
			session.flush();
		} finally {
			session.close();
		}

	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public List<Notification> deleteNotification(Integer notif) {
		int notif1 = notif;
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			List ulist = session
					.createQuery(
							"FROM Status s1, Notification n1 where n1.statusId=s1.id and n1.notification_id='"
									+ notif1 + "' ").list();
			Query query1 = session
					.createQuery("Update from Notification n1 set n1.displayflag='1' where n1.notification_id='"
							+ notif1 + "' ");
			query1.executeUpdate();
			/*
			 * Query query1=session.createQuery(
			 * "delete from Notification n1 where n1.notification_id='"
			 * +notif1+"'"); query1.executeUpdate();
			 */
			session.getTransaction().commit();
			session.flush();
			return ulist;
		} finally {
			session.close();
		}
	}

	@Override
	public List<Notification> listNotificationAll(String userMail) {

		Session session = sessionFactory.openSession();
		try {
			return session
					.createSQLQuery(
							"SELECT c.comment,u.first_name, u.last_name, n.notification_id, pi.profile_img_path FROM comments c,users u, notifications n, status s, profile_images pi where s.email='"
									+ userMail
									+ "' and n.status_id=s.status_id and n.comment_id=c.comment_id and u.email=c.comment_whom and c.comment_whom=pi.email ORDER BY n.notification_id DESC;")
					.list();
		} finally {
			session.close();
		}
	}

}
