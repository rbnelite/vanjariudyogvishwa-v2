package com.rbnelite.udyogvishwa.dao;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.rbnelite.udyogvishwa.model.Product;

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
		return session.createQuery("from Product where productName like concat('%','"+SearchData+"','%')").list();
		}
		finally
		{
			session.close();
		}
		}
	

}
