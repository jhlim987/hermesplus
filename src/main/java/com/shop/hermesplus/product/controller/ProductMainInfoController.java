package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductMainInfoService;
import com.shop.hermesplus.product.vo.ProductMainInfoVO;

@RestController
public class ProductMainInfoController {

	@Autowired
	private ProductMainInfoService productMainInfoService;
	
	@GetMapping("/productMainInfos")
	public List<ProductMainInfoVO> getProductMainInfos(ProductMainInfoVO productMainInfo){
		return productMainInfoService.selectProductMainInfos();
	}
	
	@GetMapping("/productMainInfo")
	public ProductMainInfoVO getProductMainInfo(int pmiId){
		return productMainInfoService.selectProductMainInfo(pmiId);
	}
	
}