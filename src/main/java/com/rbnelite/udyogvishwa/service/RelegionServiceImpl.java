package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.RelegionDao;
import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.model.Index;

@Service
public class RelegionServiceImpl implements RelegionService {

	@Resource
	private RelegionDao relegiondao;

	@Override
	public void insertRelegion(ReligionCredential religioncredential) {
		// TODO Auto-generated method stub

		Index relegion = new Index();
		relegion.setReligion(religioncredential.getReligionname());
		relegion.setSubCast(religioncredential.getRelCast());
		//relegion.setUsermail(religioncredential.getUsermail());

		relegiondao.insertRelegion(relegion);
	}

}
