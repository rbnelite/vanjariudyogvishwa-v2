
package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.IntrestAreasCredential;
import com.rbnelite.udyogvishwa.model.IntrestAreas;

public interface IntrestAreasService {

	public void insertIntrestAreas(IntrestAreasCredential intrestareascredential);
	public List<IntrestAreas> listIntrestAreas(String userMail);
	public IntrestAreas getIntrestAreasByEmailId(String userMail);
	public void UpdateIntrestAreas(IntrestAreas intrestAreas);
}