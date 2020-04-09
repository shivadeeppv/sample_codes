package com.project.productmanagement.dao;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.productmanagement.entity.Product;

@Repository
public class ProductDaoImpl implements ProductDAO {
	@Autowired
	SessionFactory factory;

	@Override
	public List<Product> getAllProducts() {
	    Session session =factory.getCurrentSession();
	    Query<Product> query =session.createQuery("from Product",Product.class);
	    List<Product> empList=query.getResultList();
	    return empList;
	}

	@Override
	public void saveProduct(Product emp) {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(emp);
		System.out.println(emp);
	}

	@Override
	public Product getProduct(int id) {
		Session session =factory.getCurrentSession();
		Product product=session.get(Product.class, id);
		return product;
	}

	@Override
	public void deleteProduct(int id) {
		Session session =factory.getCurrentSession();
		Product em=session.get(Product.class, id);
		session.delete(em);
		System.out.println("Deleted!");
	}
	@Override
	public Product searchProduct(int id) {
		Session session =factory.getCurrentSession();
		Product product=session.get(Product.class, id);
		return product;
	}
}