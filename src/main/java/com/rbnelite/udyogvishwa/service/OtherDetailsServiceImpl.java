
package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.OtherDetailsDao;
import com.rbnelite.udyogvishwa.dto.OtherDetailsCredential;
import com.rbnelite.udyogvishwa.model.OtherDetails;

@Service
public class OtherDetailsServiceImpl implements OtherDetailsService {

	@Resource
	private OtherDetailsDao ObjOtherDetailsDao;

	@Override
	public void insertOtherDetails(OtherDetailsCredential othetCred) {
		
		OtherDetails objOtherDet = new OtherDetails();

		objOtherDet.setUsermail(othetCred.getUsermail());
		objOtherDet.setCulturalact(othetCred.getCulturalact());
		objOtherDet.setPolyticalact(othetCred.getPolyticalact());
		objOtherDet.setPolyticalstatus(othetCred.getPolyticalstatus());
		objOtherDet.setSocialact(othetCred.getSocialact());
		objOtherDet.setSocialStatus(othetCred.getSocialStatus());

		ObjOtherDetailsDao.insertOtherDetails(objOtherDet);
	}

	@Override
	public List<OtherDetails> listOtherDetails(String userMail) {

		return ObjOtherDetailsDao.listOtherDetails(userMail);
	}

	@Override
	public void updateOtherDetails(OtherDetails otherDetails) {
		
		ObjOtherDetailsDao.updateOtherDetails(otherDetails);	
	}

	@Override
	public OtherDetails getOtherDetailsByEmailId(String userMail) {
		
		return ObjOtherDetailsDao.getOtherDetailsByEmailId(userMail);
	}

}