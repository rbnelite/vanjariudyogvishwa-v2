package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.PeopleRefrenceDao;
import com.rbnelite.udyogvishwa.model.IntrestAreas;
@Service
public class PeopleRefrenceServiceImpl implements PeopleRefrenceService {

	@Resource
	private PeopleRefrenceDao peopleRefrefdao;
	
	@Override
	public List<IntrestAreas> peopleYouMayKnow() {
		return peopleRefrefdao.peopleYouMayKnow();
	}

}
