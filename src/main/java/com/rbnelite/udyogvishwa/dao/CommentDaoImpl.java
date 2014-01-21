package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Comment;

	@Repository
	public class CommentDaoImpl extends BaseDao<Comment> implements CommentDao {
		
	public CommentDaoImpl()
	{
		super(Comment.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveComment(Comment comment) {
	Session session=sessionFactory.openSession();
	session.getTransaction().begin();
	session.save(comment);
	session.getTransaction().commit();
	session.flush();
	}


		@Override
		public List<Comment> listcomment() {
		
		return sessionFactory.getCurrentSession().createQuery("from Comment").list();
		
	}

}
