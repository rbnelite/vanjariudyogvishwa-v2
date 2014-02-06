/**
 * 
 */
package com.rbnelite.udyogvishwa.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Product;

/**
 * @author PC2
 *
 */
@Repository
public class ProductDaoImpl extends BaseDao<Product> implements ProductDao {

	@Autowired
    private SessionFactory sessionFactory;
	
	public ProductDaoImpl(){
		super(Product.class);
	}
	/* (non-Javadoc)
	 * @see com.rbnelite.udyogvishwa.dao.ProductDao#insertProduct(com.rbnelite.udyogvishwa.model.Product)
	 */
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertProduct(Product product) {
		// TODO Auto-generated method stub

		Session session=sessionFactory.openSession();
		session.getTransaction().begin();
		session.save(product);
		session.getTransaction().commit();
		session.flush();
		
	}
	@Override
	public List<Product> listProduct(String userMail) {
		
		return sessionFactory.getCurrentSession().createQuery("from Product where userMail='"+userMail+"' ")
                .list();
	
	}

}
