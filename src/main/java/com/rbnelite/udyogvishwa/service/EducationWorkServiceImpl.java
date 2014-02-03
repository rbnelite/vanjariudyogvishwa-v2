package com.rbnelite.udyogvishwa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.EducationWorkDao;
import com.rbnelite.udyogvishwa.dto.EducationWorkCredential;
import com.rbnelite.udyogvishwa.model.EducationWork;

@Service
public class EducationWorkServiceImpl implements EducationWorkService {

	@Resource
	private EducationWorkDao educationworkdao;
	
	
	
	@Override
	public EducationWork getByEmailId(String userMail) {

		return educationworkdao.getByEmailId(userMail);
	}
	
	
	
	
	@Override
	public void insertEducationWork(
			EducationWorkCredential educationworkcredential) {

		EducationWork educationwork = new EducationWork();

		educationwork.setSchool(educationworkcredential.getSchool());
		educationwork.setCollage(educationworkcredential.getCollage());
		educationwork.setGraduation(educationworkcredential.getGraduation());
		educationwork.setOtherGraduation(educationworkcredential
				.getOtherGraduation());
		educationwork.setPGCollege(educationworkcredential.getPGCollege());
		educationwork.setPGDegree(educationworkcredential.getPGDegree());
		educationwork.setOtherPG(educationworkcredential.getOtherPG());
		educationwork.setUserMail(educationworkcredential.getUserMail());

		educationworkdao.insertEducationWork(educationwork);

	}

	@Override
	@Transactional
	public List<EducationWork> listEducationWork(String userMail) {

		return educationworkdao.listEducationWork(userMail);
	}

	@Override
	public void updateEducation(EducationWork educationWork) {
		
		educationworkdao.updateEducation(educationWork);
		
	}

	

}
