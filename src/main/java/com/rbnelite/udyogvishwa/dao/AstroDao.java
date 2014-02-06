package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Astro;
import com.rbnelite.udyogvishwa.model.EducationWork;

public interface AstroDao {
	
	public void saveAstro(Astro astro);

	public List<Astro> listAstro(String userMail);

	public void updateAstro(Astro astro);

	public Astro getAstroByEmailId(String userMail);

}
