package com.rbnelite.udyogvishwa.service;



import java.util.List;

import com.rbnelite.udyogvishwa.dto.ManojCredential;
import com.rbnelite.udyogvishwa.model.Manoj;

public interface ManojService {
	
	public void insertManoj(ManojCredential manojCred);
	public List<Manoj> listManoj();
	
	

}
