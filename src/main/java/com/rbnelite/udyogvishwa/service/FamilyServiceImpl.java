/**
 * 
 */
package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.FamilyDao;
import com.rbnelite.udyogvishwa.dto.FamilyCredential;
import com.rbnelite.udyogvishwa.model.Family;

/**
 * @author PC3
 *
 */
@Service
public class FamilyServiceImpl implements FamilyService {

	@Resource
	private FamilyDao ObjFamilyDao;
	
	
	@Override
	public void insertFamily(FamilyCredential familyCred) {
		
		Family objFamily=new Family();
		
		objFamily.setFamilyValue(familyCred.getFamilyValue());
		objFamily.setFamilyType(familyCred.getFamilyType());
		objFamily.setFamilyStatus(familyCred.getFamilyStatus());
		objFamily.setFamilyIncome(familyCred.getFamilyIncome());
		objFamily.setUserMail(familyCred.getUserMail());
		
		ObjFamilyDao.insertFamily(objFamily);
		

	}

}
