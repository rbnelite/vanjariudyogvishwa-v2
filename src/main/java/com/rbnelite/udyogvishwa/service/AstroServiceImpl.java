package com.rbnelite.udyogvishwa.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;




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
		astro.setUserMail(astrodenteal.getUserMail());
		astro.setState(astrodenteal.getState());
		astrodao.saveAstro(astro);
	}


	@Override
	@Transactional
	public List<Astro> listAstro(String userMail) {

		return astrodao.listAstro(userMail);
	}


	@Override
	public void updateAstro(Astro astro) {
		astrodao.updateAstro(astro);
		
	}


	@Override
	public Astro getAstroByEmailId(String userMail) {

		return astrodao.getAstroByEmailId(userMail);
	}

}
