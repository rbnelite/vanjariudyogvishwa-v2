package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.RelegionDao;
import com.rbnelite.udyogvishwa.dto.ReligionCredential;
import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.Religion;

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
		relegion.setEmailId(religioncredential.getUsermail());
		

		relegiondao.insertRelegion(relegion);
	}

	@Override
	public List<Index> listReligion(String UserMail) {
		
		return relegiondao.listReligion(UserMail);
	}

	@Override
	public void UpdateReligion(Index index) {
		relegiondao.UpdateReligion(index);
		
	}

}
