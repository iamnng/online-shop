package com.online.shop.dao;

import java.util.List;

import com.online.shop.model.Product;

public interface ProductDao {
	
	void addProduct(Product product);
	
	Product getProductById(String id);
	
	List<Product> getAllProducts();
	
	void deleteProduct(String id);
}