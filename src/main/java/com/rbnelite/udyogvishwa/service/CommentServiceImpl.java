package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.CommentDao;
import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Comment;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Service
public class CommentServiceImpl implements CommentService {

	@Resource
	private CommentDao commentdao;

	@Override
	public int saveComment(CommentCredential commentcredential) {
		Comment comment = new Comment();
		comment.setComment(commentcredential.getCommenttext());
		Index user = new Index();
		user.setId(RequestContext.getUser().getId());
		user.setEmailId(commentcredential.getWhoseComment());
		comment.setUser(user);
		comment.setStatusId(Integer.parseInt(commentcredential
				.getStatusIdForComment()));
		comment.setCommentOn(commentcredential.getCommentOn());
		Integer CommentId = commentdao.saveComment(comment);
		return CommentId;
	}

	@Override
	@Transactional
	public List<Comment> listComment() {

		return commentdao.listcomment();
	}

	@Override
	public void updateComment(String commenttext, String id) {

		commentdao.updateComment(commenttext, id);

	}
}
