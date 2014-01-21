package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.CommentDao;
import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Comment;

@Service
public class CommentServiceImpl implements CommentService {

	@Resource
	private CommentDao commentdao;
	
	@Override
	public void saveComment(CommentCredential commentcredential) {
		Comment comment=new Comment();
		comment.setComment(commentcredential.getCommenttext());
		comment.setWhoseComment("XXX");
		comment.setStatusId(Integer.parseInt(commentcredential.getStatusIdForComment()));
		comment.setCommentOn("xxx");
		commentdao.saveComment(comment);

	}

	@Override
	@Transactional
	public List<Comment> listComment() {
		
		return commentdao.listcomment();
	}

}
