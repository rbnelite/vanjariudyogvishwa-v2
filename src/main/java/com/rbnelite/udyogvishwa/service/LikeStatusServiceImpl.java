package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.LikeStatusDao;
import com.rbnelite.udyogvishwa.model.LikeStatus;

@Service
public class LikeStatusServiceImpl implements LikeStatusService {

	@Resource
	private LikeStatusDao likestatusdao;
	
	@Override
	public void LikeTheStatus() {
		LikeStatus likestatus=new LikeStatus();
		likestatus.setCount(1);
		likestatus.setStatusId("xx");
		likestatus.setWhoLike("abc");
		likestatusdao.LikeTheStatus(likestatus);
	}

}
