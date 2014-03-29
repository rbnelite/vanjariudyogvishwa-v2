package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Comment;

@Repository
public class CommentDaoImpl extends BaseDao<Comment> implements CommentDao {

	public CommentDaoImpl() {
		super(Comment.class);
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public int saveComment(Comment comment) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			Integer commentId = (Integer) session.save(comment);
			session.getTransaction().commit();
			session.flush();

			return commentId;
		} finally {
			session.close();
		}
	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public List<Comment> listcomment() {
		Session session = sessionFactory.openSession();
		try {
			return session.createQuery("from Comment").list();
		} finally {
			session.close();
		}

		/*
		 * Session session=sessionFactory.openSession();
		 * session.beginTransaction();
		 * 
		 * String hql=
		 * "select C.id, C.comment, C.whoseComment, C.statusId, C.commentOn, I.firstName, I.lastName from Comment C,Index I where C.whoseComment = I.emailId"
		 * ; Query query=session.createQuery(hql);
		 * session.getTransaction().commit(); return query.list();
		 */

	}

	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	public void updateComment(String commenttext, String id) {
		Session session = sessionFactory.openSession();
		try{
		session.getTransaction().begin();

		Integer id1 = Integer.parseInt(id);
		Query query = session
				.createQuery("update Comment set comment = :comment1 where id = :id");
		query.setParameter("comment1", commenttext);
		query.setParameter("id", id1);
		query.executeUpdate();
		session.getTransaction().commit();
		session.flush();
	}     
	       finally
	       {
	    	   session.close();
	       }
	}

}
