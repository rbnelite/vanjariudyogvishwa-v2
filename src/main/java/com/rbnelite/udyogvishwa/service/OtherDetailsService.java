/**
 * 
 */
package com.rbnelite.udyogvishwa.service;


import java.util.List;

import com.rbnelite.udyogvishwa.dto.OtherDetailsCredential;
import com.rbnelite.udyogvishwa.model.OtherDetails;


/**
 * @author PC3
 *
 */
public interface OtherDetailsService {
	
	public void insertOtherDetails(OtherDetailsCredential othetCred);

	public List<OtherDetails> listOtherDetails(String userMail);

}
