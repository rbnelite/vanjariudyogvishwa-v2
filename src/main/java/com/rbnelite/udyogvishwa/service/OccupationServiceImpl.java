package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.OccupationDao;
import com.rbnelite.udyogvishwa.dto.OccupationCredential;
import com.rbnelite.udyogvishwa.model.Occupation;

@Service
public class OccupationServiceImpl implements OcccupationService {
	
@Resource
private OccupationDao ocdao;

@Override
public void insertOccupation(OccupationCredential occredential){
	Occupation oc=new Occupation();
	
	oc.setCompanyname(occredential.getCompanyName());
	oc.setOccupation(occredential.getOccupatiuon());
	oc.setProductdetails(occredential.getProductdetils());
	oc.setNumberofemp(occredential.getNumberofemp());
	oc.setEmptype(occredential.getEmptype());
	oc.setAnnualincome(occredential.getAnnualincome());
	oc.setUsermail(occredential.getUsermail());
	
	ocdao.insertOccupation1(oc);
	
	
}
	

}
