package com.rbnelite.udyogvishwa.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.rbnelite.udyogvishwa.model.IntrestAreas;

@Repository
public class PeopleRefrenceDaoImpl extends BaseDao<IntrestAreas> implements PeopleRefrenceDao {
	public PeopleRefrenceDaoImpl()
	{
		super(IntrestAreas.class);
	}
		
	@Override
	@Transactional
	public List<IntrestAreas> peopleYouMayKnow() {
				
		return sessionFactory.getCurrentSession().createQuery("from IntrestAreas").list();
	}
}
