package com.project.productmanagement.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.productmanagement.entity.Product;
import com.project.productmanagement.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
    ProductService productService;
    
	@GetMapping("/list")
    public String listProducts(Model theModel)
    {
		List<Product> products= productService.getAllProducts();
		theModel.addAttribute("products",products);
        products.forEach(s -> System.out.println(s));
    	return "product-list";
    }
	
    @GetMapping("/addProduct")
	public String addProduct(Model model) {
		Product e1=new Product();
		model.addAttribute("product",e1);
		return "product-add-form";
	}
    
    @PostMapping("/saveProduct")
	public String saveProduct(@Valid @ModelAttribute("product") Product emp,BindingResult bind)
	{
    	
    	   productService.saveProduct(emp);
		   return "redirect:/product/list";
    	
	}
    
    @GetMapping("/updateProduct")
    public String updateProduct(@RequestParam("productId") int id,Model model)
	{
		Product emp=productService.getProduct(id);
		model.addAttribute("product", emp);
		return "product-update-form";
	}
    
    @GetMapping("/deleteProduct")
	public String delete(@RequestParam("productId") int id)
	{
		productService.deleteProduct(id);
		return "redirect:/product/list";
	}
    @GetMapping("/searchProduct")
  	public String searchProduct(@RequestParam("productId") int id, Model model)
  	{
    	Product emp=productService.searchProduct(id);
      	model.addAttribute("product", emp);
  		return "product-search-form";
  	}
}