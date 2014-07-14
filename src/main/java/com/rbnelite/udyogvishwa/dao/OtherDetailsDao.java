package com.rbnelite.udyogvishwa.dao;


import java.util.List;




import com.rbnelite.udyogvishwa.model.OtherDetails;

public interface OtherDetailsDao {
	
	public void insertOtherDetails(OtherDetails otherDetail);

	
	public List<OtherDetails> listOtherDetails(String userMail);
	
	public void updateOtherDetails(OtherDetails otherDetails);

	public OtherDetails getOtherDetailsByEmailId(String userMail);

}
