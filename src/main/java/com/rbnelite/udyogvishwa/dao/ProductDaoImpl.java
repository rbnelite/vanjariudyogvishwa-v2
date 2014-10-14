package com.rbnelite.udyogvishwa.dao;
import java.util.List;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Product;

@Repository
public class ProductDaoImpl extends BaseDao<Product> implements ProductDao {

	
	public ProductDaoImpl(){
		super(Product.class);
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void insertProduct(Product product) {
		
		Session session=sessionFactory.openSession();
		try{
		session.getTransaction().begin();
		session.save(product);
		session.getTransaction().commit();
		session.flush();
		}
		finally
		{
			session.close();
		}
	}
	@Override
	@Transactional
	public List<Product> listProduct(String userMail) {
		
		Session session=sessionFactory.openSession();
		try{
		return session.createQuery("from Product where userMail='"+userMail+"' order by productId desc")
                .list();
		}
		finally
		{
			session.close();
		}
	}
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List searchProductList(String SearchData) {
		Session session=sessionFactory.openSession();
		try{
		return session.createQuery("from Product where productName like concat('%','"+SearchData+"','%') or productDetails like concat('%','"+SearchData+"','%')").list();
		}
		finally
		{
			session.close();
		}
		}
	

}
