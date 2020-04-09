package com.project.productmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.productmanagement.dao.ProductDAO;
import com.project.productmanagement.entity.Product;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO productDao;
	
	@Override
	@Transactional
	public List<Product> getAllProducts() {
		
		return productDao.getAllProducts();
	}

	@Override
	@Transactional
	public void saveProduct(Product emp) {
		productDao.saveProduct(emp);
		
	}

	@Override
	@Transactional
	public Product getProduct(int id) {
		return productDao.getProduct(id);
	}

	@Override
	@Transactional
	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
	}
	@Override
	@Transactional
	public Product searchProduct(int id) {
		return productDao.searchProduct(id);
	}

}
