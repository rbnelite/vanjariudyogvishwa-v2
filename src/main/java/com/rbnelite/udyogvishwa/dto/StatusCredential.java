package com.rbnelite.udyogvishwa.dto;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Comment;

public class StatusCredential {

	private String status;
	private String statusDate;
	private List<Comment> comments;
	private String usermail;
	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatusDate() {
		return statusDate;
	}

	public void setStatusDate(String statusDate) {
		this.statusDate = statusDate;
	}

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
}
