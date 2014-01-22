package com.rbnelite.udyogvishwa.dao;


import java.util.List;


import com.rbnelite.udyogvishwa.model.Astro;

public interface AstroDao {
	public void saveAstro(Astro astro);

	public List<Astro> listAstro();


}
