package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductImgService;
import com.shop.hermesplus.product.vo.ProductImgVO;

@RestController
public class ProductImgController {

	@Autowired
	ProductImgService productImgService;
	
	@GetMapping("/productImg")
	public List<ProductImgVO> getProductImgs(ProductImgVO img){
		return productImgService.selectProductImgs(img);
	}
	
	@GetMapping("/productImg/{piId}")
	public ProductImgVO getProductImg(ProductImgVO img){
		return productImgService.selectProductImg(img);
	}
	
	@PostMapping("/productImg")
	public int addProductImg(ProductImgVO img) {
		return productImgService.insertProductImg(img);
	}
}
