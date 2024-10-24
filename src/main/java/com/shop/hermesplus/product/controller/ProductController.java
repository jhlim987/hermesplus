package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductService;
import com.shop.hermesplus.product.vo.ProductVO;


@RestController
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@GetMapping
	public List<ProductVO> getProducts(ProductVO product){
		return productService.selectProducts(product);
	}
	
	@PostMapping
	public int addProduct(ProductVO product) {
		return productService.insertProduct(product);
	}
	
}