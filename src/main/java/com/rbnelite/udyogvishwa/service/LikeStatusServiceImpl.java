package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.LikeStatusDao;
import com.rbnelite.udyogvishwa.model.LikeStatus;

@Service
public class LikeStatusServiceImpl implements LikeStatusService {

	@Resource
	private LikeStatusDao likestatusdao;
	
	@Override
	public void LikeTheStatus(LikeStatus likeStatus) {
		LikeStatus like_status=new LikeStatus();
		
		like_status.setMyReply(likeStatus.getMyReply());
		like_status.setStatusId(likeStatus.getStatusId());
		like_status.setWhoLike(likeStatus.getWhoLike());
		
		likestatusdao.LikeTheStatus(like_status);
	}

	@Override
	@Transactional
	public List<LikeStatus> listLikeStatus() {
		
		List<LikeStatus> l1=likestatusdao.listLikeStatus();
		
		return l1;
	}

}
