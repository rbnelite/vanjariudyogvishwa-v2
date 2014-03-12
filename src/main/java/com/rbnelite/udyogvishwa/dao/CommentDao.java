package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Comment;

public interface CommentDao {
	public int saveComment(Comment comment);
	public List<Comment> listcomment();
	void updateComment(String commenttext, String id);
	
}
