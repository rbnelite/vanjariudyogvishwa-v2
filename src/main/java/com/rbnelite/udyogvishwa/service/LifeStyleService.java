package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.LifeStyleCredential;
import com.rbnelite.udyogvishwa.model.LifeStyle;

public interface LifeStyleService {

	public void insertLifeStyle(LifeStyleCredential lifetstylecredential);

	public List<LifeStyle> listLifeStyle(String userMail);
	
	public void updateLifeStyle(LifeStyle lifeStyle);

	public LifeStyle getLifeStyleByEmailId(String userMail);

}