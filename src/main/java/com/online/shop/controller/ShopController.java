package com.online.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.online.shop.dao.ProductDao;
import com.online.shop.model.Product;

@Controller
public class ShopController {
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(){
		return "home";
	}
	
	@RequestMapping("/products")
	public String getAllProducts(Model model){
		List<Product> productList = productDao.getProductList();
		model.addAttribute(productList);
		return "products";
	}
	
	@RequestMapping("/products/productDetails/{productId}")
	public String getProductDetails(Model model, @PathVariable String productId){
		Product product = productDao.getProductById(productId);
		model.addAttribute(product);
		return "productDetails";
	}
}