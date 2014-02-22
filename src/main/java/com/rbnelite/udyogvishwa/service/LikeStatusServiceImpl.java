package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.LikeStatusDao;
import com.rbnelite.udyogvishwa.model.LikeStatus;

@Service
public class LikeStatusServiceImpl implements LikeStatusService {

	@Resource
	private LikeStatusDao likestatusdao;
	
	@Override
	public void LikeTheStatus(LikeStatus likeStatus) {
		LikeStatus likestatus=new LikeStatus();
		likestatus.setCount(true);
		likestatus.setStatusId(likeStatus.getStatusId());
		likestatus.setWhoLike(likeStatus.getWhoLike());
		likestatusdao.LikeTheStatus(likestatus);
	}

	@Override
	public List<LikeStatus> listLikeStatus() {
		
		List<LikeStatus> l1=likestatusdao.listLikeStatus();
		System.out.println("88888likeStatus List contains" + l1.size()+" Elements");
		return l1;
	}

}
