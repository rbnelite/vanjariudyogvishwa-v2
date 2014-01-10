package com.rbnelite.udyogvishwa.service;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rbnelite.udyogvishwa.dao.NeedDao;
import com.rbnelite.udyogvishwa.dto.NeedCredential;
import com.rbnelite.udyogvishwa.model.Need;

@Service
public class NeedServiceImpl implements NeedService {

@Resource
private NeedDao needdao;

@Override
public void insertNeed(NeedCredential needcredential){
	
	Need need=new Need();
	need.setNeed(needcredential.getNeed());
	need.setDescription(needcredential.getDescription());
	need.setMobile(needcredential.getMobile());
	needdao.insertNeed(need);
}

}
