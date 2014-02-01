package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.RelegionDao;
import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.model.Religion;

@Service
public class RelegionServiceImpl implements RelegionService {

	@Resource
	private RelegionDao relegiondao;

	@Override
	public void insertRelegion(ReligionCredential religioncredential) {
		// TODO Auto-generated method stub

		Religion relegion = new Religion();
		relegion.setReligionname(religioncredential.getReligionname());
		relegion.setRelCast(religioncredential.getRelCast());
		relegion.setUsermail(religioncredential.getUsermail());

		relegiondao.insertRelegion(relegion);
	}

}
