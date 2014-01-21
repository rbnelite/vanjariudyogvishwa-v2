package com.rbnelite.udyogvishwa.service;



import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.rbnelite.udyogvishwa.dao.EducationWorkDao;
import com.rbnelite.udyogvishwa.dto.EducationWorkCredential;
import com.rbnelite.udyogvishwa.model.EducationWork;

@Service
public class EducationWorkServiceImpl implements EducationWorkService {
	
@Resource 
private EducationWorkDao educationworkdao;

@Override
public void insertEducationWork(EducationWorkCredential educationworkcredential){
	
	EducationWork educationwork=new EducationWork();
	
	educationwork.setSchool(educationworkcredential.getSchool());
	educationwork.setCollage(educationworkcredential.getCollage());
	educationwork.setGraduation(educationworkcredential.getGraduation());
	educationwork.setOtherGraduation(educationworkcredential.getOtherGraduation());
	educationwork.setPGCollege(educationworkcredential.getPGCollege());
	educationwork.setPGDegree(educationworkcredential.getPGDegree());
	educationwork.setOtherPG(educationworkcredential.getOtherPG());
	educationwork.setUserMail(educationworkcredential.getUserMail());
	
	educationworkdao.insertEducationWork(educationwork);
	
}




}
