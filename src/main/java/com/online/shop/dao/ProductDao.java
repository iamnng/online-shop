package com.online.shop.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.online.shop.model.Product;

@Repository
public class ProductDao {
	private List<Product> productList;
	
	{
		this.productList = new ArrayList<Product>();
		productList.add(new Product("001", "Electric Guitar", "Strings", "Trendy Guitar by Music.com", 5500, "New", "Active", 5, "Yamaha"));
		productList.add(new Product("002", "Flute", "Woodwinds", "Flute that compliments you!", 1800, "Refurbished", "Active", 8, "Sanskriti"));
		productList.add(new Product("003", "Tabla", "Percussion", "You will love this Tabla", 6200, "New", "Active", 2, "Yamaha"));
	}
	
	public List<Product> getProductList(){
		return productList;
	}
	
	public Product getProductById(String productId){
		Product searchedProduct = null;
		for(Product product : productList){
			if(product.getProductId().equalsIgnoreCase(productId)){
				searchedProduct = product;				
			}
		}
		return searchedProduct;
	}
}
