package com.project.productmanagement.service;
import java.util.List;

import com.project.productmanagement.entity.Product;

public interface ProductService {
	public List<Product> getAllProducts();
	public void saveProduct(Product emp);
	public Product getProduct(int id);
	public void deleteProduct(int id);
	public Product searchProduct(int id);
}