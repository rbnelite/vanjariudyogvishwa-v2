package com.rbnelite.udyogvishwa.dto;

public class CommentCredential {
	
	private String commenttext;
	private String statusIdForComment;
	private String whoseComment;
	private String commentOn;
	
	public String getStatusIdForComment() {
		return statusIdForComment;
	}

	public void setStatusIdForComment(String statusIdForComment) {
		this.statusIdForComment = statusIdForComment;
	}

	public String getCommenttext() {
		return commenttext;
	}

	public void setCommenttext(String commenttext) {
		this.commenttext = commenttext;
	}

	public String getWhoseComment() {
		return whoseComment;
	}

	public void setWhoseComment(String whoseComment) {
		this.whoseComment = whoseComment;
	}

	public String getCommentOn() {
		return commentOn;
	}

	public void setCommentOn(String commentOn) {
		this.commentOn = commentOn;
	}

}
