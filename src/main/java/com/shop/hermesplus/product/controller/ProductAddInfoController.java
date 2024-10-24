package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductAddInfoService;
import com.shop.hermesplus.product.vo.ProductAddInfoVO;

@RestController
public class ProductAddInfoController {

	@Autowired
	ProductAddInfoService productAddInfoService;
	
	@GetMapping("/productAddInfo")
	public List<ProductAddInfoVO> getProductAddInfos(ProductAddInfoVO productAddInfo){
		return productAddInfoService.selectProductAddInfos(productAddInfo);
	}
	
	@PostMapping("/productAddInfo")
	public int addProductAddInfo(ProductAddInfoVO productAddInfo){
		return productAddInfoService.insertProductAddInfo(productAddInfo);
	}
	
}
