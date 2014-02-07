package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.IntrestAreasDao;
import com.rbnelite.udyogvishwa.dto.IntrestAreasCredential;
import com.rbnelite.udyogvishwa.model.IntrestAreas;

@Service
public class IntrestAreasServiceImpl implements IntrestAreasService {

	@Resource
	private IntrestAreasDao intresareasdao;
	
	@Override
	public void insertIntrestAreas(IntrestAreasCredential intrestareascredential) {
		// TODO Auto-generated method stub

		IntrestAreas intrestareas=new IntrestAreas();
		intrestareas.setIntrestAreaId(intrestareascredential.getIntrestAreaId());
		intrestareas.setUserMail(intrestareascredential.getUserMail());
		intresareasdao.insertIntrestAreas(intrestareas);
	}

}
