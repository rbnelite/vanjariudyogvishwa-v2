package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Comment;

public interface CommentDao {
	public void saveComment(Comment comment);
	public List<Comment> listcomment();
	
}
