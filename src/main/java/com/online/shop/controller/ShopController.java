package com.online.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		List<Product> productList = productDao.getAllProducts();
		model.addAttribute(productList);
		return "products";
	}
	
	@RequestMapping("/products/productDetails/{productId}")
	public String getProductDetails(Model model, @PathVariable String productId){
		Product product = productDao.getProductById(productId);
		model.addAttribute(product);
		return "productDetails";
	}
	
	@RequestMapping("/admin")
	public String admin(){
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model){
		List<Product> productList = productDao.getAllProducts();
		model.addAttribute(productList);
		return "productInventory";
	}
	
	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model){
		Product product = new Product("002", "Flute", "Woodwinds", "Flute that compliments you!", 1800, "Refurbished", "Active", 8, "Sanskriti");
		model.addAttribute(product);
		return "addProduct";
	}
	
	@RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
	public String addProductPost(@ModelAttribute("Product") Product product){
		productDao.addProduct(product);
		return "redirect:/admin/productInventory";
	}
}