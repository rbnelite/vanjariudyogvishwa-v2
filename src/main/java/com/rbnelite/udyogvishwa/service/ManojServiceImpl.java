/**
 * 
 */
package com.rbnelite.udyogvishwa.service;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.dao.ManojDao;
import com.rbnelite.udyogvishwa.dto.ManojCredential;
import com.rbnelite.udyogvishwa.model.Manoj;

/**
 * @author PC3
 *
 */
@Service
public class ManojServiceImpl implements ManojService  {

	@Resource
	private ManojDao ObjmanojDao;
	
	@Override
	public void insertManoj(ManojCredential manojCred) {
		
		Manoj ObjManoj=new Manoj();
				
		ObjManoj.setfName(manojCred.getfName());
		ObjManoj.setlName(manojCred.getlName());
		
		ObjmanojDao.registerManoj(ObjManoj);
	}

	@Override
	@Transactional
	public List<Manoj> listManoj() {
		return ObjmanojDao.listManoj();
		
	}

	
}
