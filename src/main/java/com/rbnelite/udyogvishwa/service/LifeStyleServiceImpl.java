package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.LifeStyleDao;
import com.rbnelite.udyogvishwa.dto.LifeStyleCredential;
import com.rbnelite.udyogvishwa.model.LifeStyle;

@Service
public class LifeStyleServiceImpl implements LifeStyleService {

	@Resource
	private LifeStyleDao lifestyledao;
	
	@Override
	public void insertLifeStyle(LifeStyleCredential lifetstylecredential) {
		// TODO Auto-generated method stub

		LifeStyle lifestyle=new LifeStyle();
		lifestyle.setDiet(lifetstylecredential.getDiet());
		lifestyle.setSmoke(lifetstylecredential.getSmoke());
		lifestyle.setDrink(lifetstylecredential.getDrink());
		lifestyle.setComplexion(lifetstylecredential.getComplexion());
		lifestyle.setBodytype(lifetstylecredential.getBodytype());
		lifestyle.setBloodgroup(lifetstylecredential.getBloodgroup());
		lifestyle.setWeight(lifetstylecredential.getWeight());
		lifestyle.setUsermail(lifetstylecredential.getUsermail());
		lifestyledao.insertLifeStyle(lifestyle);
	}

}
