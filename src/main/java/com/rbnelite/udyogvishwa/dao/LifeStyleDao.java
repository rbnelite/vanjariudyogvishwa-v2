/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;


import java.util.List;





import com.rbnelite.udyogvishwa.model.LifeStyle;

/**
 * @author PC2
 *
 */
public interface LifeStyleDao {

	public void insertLifeStyle(LifeStyle lifestyle);

	public List<LifeStyle> listLifeStyle(String userMail);
	public void updateLifeStyle(LifeStyle lifeStyle);

	public LifeStyle getLifeStyleByEmailId(String userMail);
}
