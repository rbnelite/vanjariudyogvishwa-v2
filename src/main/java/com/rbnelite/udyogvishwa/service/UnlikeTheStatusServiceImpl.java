package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.UnlikeStatusDao;
import com.rbnelite.udyogvishwa.model.UnlikeStatus;

@Service
public class UnlikeTheStatusServiceImpl implements UnlikeStatusService {

	@Resource
	private UnlikeStatusDao unlikestatusdao;
	
	
	@Override
	public void unlikeTheStatus() {
		
		UnlikeStatus unlikestatus=new UnlikeStatus();
		unlikestatus.setCount(1);
		unlikestatus.setWhoUnlike("xyz");
		unlikestatus.setStatusId("11");
		unlikestatusdao.unlikeTheStatus(unlikestatus);

	}

}
