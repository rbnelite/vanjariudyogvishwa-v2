package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.EducationWorkCredential;
import com.rbnelite.udyogvishwa.model.EducationWork;

public interface EducationWorkService {

	public void insertEducationWork(EducationWorkCredential inscredential);

	public List<EducationWork> listEducationWork();
}
