package com.rbnelite.udyogvishwa.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.StatusDao;
import com.rbnelite.udyogvishwa.dto.StatusCredential;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.Status;
import com.rbnelite.udyogvishwa.utils.RequestContext;

@Service
public class StatusServiceImpl implements StatusService {

	@Resource
	private StatusDao statusdao;
	
	@Override
	public void SaveStatusUpdate(StatusCredential statuscredential) {
		
		Status status=new Status();
		Index user = new Index();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		
		status.setStatus(statuscredential.getStatus());
		status.setStatusDate(dateFormat.format(date));
				
		user.setId(RequestContext.getUser().getId());
		user.setEmailId(statuscredential.getUsermail());
		
		status.setUser(user);
		
		statusdao.statusUpdate(status);
	}

	@Override
	@Transactional
	public List<Status> listStatus(String userMail) {
		
		return statusdao.listStatus(userMail);
	}

	@Override
	public List searchStatusList(String SearchData) {
		
		return statusdao.searchStatusList(SearchData);
	}
}