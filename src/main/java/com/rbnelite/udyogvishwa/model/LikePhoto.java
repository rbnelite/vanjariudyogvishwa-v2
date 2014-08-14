
package com.rbnelite.udyogvishwa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="like_photo")
public class LikePhoto {

	
	@Id
	@Column(name="like_id")
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="likephoto_sequence_id")
	@SequenceGenerator(name="likephoto_sequence_id", sequenceName="like_photo_sequence",allocationSize=1)
	private int id;
	
	@Column(name="status")
	private boolean myReply;
	
	@Column(name="email")
	private String whoLike;
	
	@Column(name="photo_id")
	private int photoId;
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isMyReply() {
		return myReply;
	}

	public void setMyReply(boolean myReply) {
		this.myReply = myReply;
	}

	public String getWhoLike() {
		return whoLike;
	}

	public void setWhoLike(String whoLike) {
		this.whoLike = whoLike;
	}

	public int getPhotoId() {
		return photoId;
	}

	public void setPhotoId(int photoId) {
		this.photoId = photoId;
	}
	
}
