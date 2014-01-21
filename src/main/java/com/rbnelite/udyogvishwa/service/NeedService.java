package com.rbnelite.udyogvishwa.service;

import java.util.List;

import com.rbnelite.udyogvishwa.dto.NeedCredential;
import com.rbnelite.udyogvishwa.model.Need;

public interface NeedService {

	public void insertNeed(NeedCredential needcredential);
	public List<Need> listNeed();
}
