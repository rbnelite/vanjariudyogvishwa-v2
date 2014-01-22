package com.rbnelite.udyogvishwa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.AstroDao;
import com.rbnelite.udyogvishwa.dto.AstroCredential;
import com.rbnelite.udyogvishwa.model.Astro;

@Service
public class AstroServiceImpl implements AstroService {

	@Resource
	private AstroDao astrodao;
	
	@Override
	public void saveAstro(AstroCredential astrodenteal) {
		Astro astro=new Astro();
		astro.setCountry(astrodenteal.getCountry());
		astro.setCity(astrodenteal.getCity());
		astro.setZodiac(astrodenteal.getZodiac());
		astro.setEmail("anil@gmail.com");
		astrodao.saveAstro(astro);
	}

}
