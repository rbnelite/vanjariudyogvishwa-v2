/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;

import java.util.List;

import com.rbnelite.udyogvishwa.model.Index;
import com.rbnelite.udyogvishwa.model.Religion;

/**
 * @author PC2
 * 
 */
public interface RelegionDao {

	public void insertRelegion(Index indexreligion);
	public List<Index> listReligion(String UserMail);
	public void UpdateReligion(Index index);
	public Index getReligionByEmailId(String userMail);

}
