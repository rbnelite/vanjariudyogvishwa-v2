package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.LifeStyleDao;
import com.rbnelite.udyogvishwa.dto.LifeStyleCredential;
import com.rbnelite.udyogvishwa.model.LifeStyle;

@Service
public class LifeStyleServiceImpl implements LifeStyleService {

	@Resource
	private LifeStyleDao lifestyledao;

	@Override
	public void insertLifeStyle(LifeStyleCredential lifetstylecredential) {

		LifeStyle lifestyle = new LifeStyle();
		
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

	@Override
	@Transactional
	public List<LifeStyle> listLifeStyle(String userMail) {

		return lifestyledao.listLifeStyle(userMail);
	}

	@Override
	public void updateLifeStyle(LifeStyle lifeStyle) {
		
		lifestyledao.updateLifeStyle(lifeStyle);	
	}

	@Override
	public LifeStyle getLifeStyleByEmailId(String userMail) {
		
		return lifestyledao.getLifeStyleByEmailId(userMail);
	}
}