package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.model.LikeStatus;

public interface LikeStatusService {
	
	public void LikeTheStatus(LikeStatus likeStatus);
	public List<LikeStatus> listLikeStatus();
}
