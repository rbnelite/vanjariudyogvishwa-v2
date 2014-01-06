package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.AnilDao;
import com.rbnelite.udyogvishwa.dto.AnilCrenditial;
import com.rbnelite.udyogvishwa.model.Anil;

@Service
public class AnilServiceImpl implements AnilService {

	@Resource
	private AnilDao abdao;
	
	@Override
	public void RegisterAnil(AnilCrenditial abcredential) {
		Anil ab=new Anil();
		ab.setFname(abcredential.getFirst_name());
		ab.setLname(abcredential.getLast_name());
		abdao.RegisterAnil1(ab);

	}

}
