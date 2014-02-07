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
import com.rbnelite.udyogvishwa.model.Status;

@Service
public class StatusServiceImpl implements StatusService {

	@Resource
	private StatusDao statusdao;
	
	@Override
	public void SaveStatusUpdate(StatusCredential statuscredential) {
		Status status=new Status();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		status.setStatus(statuscredential.getStatus());
		status.setStatusDate(dateFormat.format(date));
		status.setUsermail(statuscredential.getUsermail());
		statusdao.statusUpdate(status);
	}

	@Override
	@Transactional
	public List<Status> listStatus() {
		return statusdao.listStatus();
	}

	@Override
	public List searchStatusList(String SearchData) {
		
		return statusdao.searchStatusList(SearchData);
	}
}
