package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.LikeStatus;

public interface LikeStatusDao {
	public void LikeTheStatus(LikeStatus likestatus);

	public List<LikeStatus> listLikeStatus();

}
