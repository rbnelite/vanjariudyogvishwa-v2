package com.rbnelite.udyogvishwa.service;


import java.util.List;

import com.rbnelite.udyogvishwa.dto.AstroCredential;
import com.rbnelite.udyogvishwa.model.Astro;

public interface AstroService {
	
	public void saveAstro(AstroCredential astrodenteal);

	public List<Astro> listAstro(String userMail);

}
