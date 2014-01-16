package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.CommentCredential;
import com.rbnelite.udyogvishwa.model.Comment;

public interface CommentService {
	
	public void saveComment(CommentCredential commentcredential);
	public List<Comment> listComment();

}
