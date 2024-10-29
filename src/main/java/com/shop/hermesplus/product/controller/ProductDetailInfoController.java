package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductDetailInfoService;
import com.shop.hermesplus.product.vo.ProductDetailInfoVO;

@RestController
public class ProductDetailInfoController {

	@Autowired
	private ProductDetailInfoService productDetailInfoService;
	
	@GetMapping("/productDetailInfo")
	public List<ProductDetailInfoVO> getProductDetailInfos(ProductDetailInfoVO productDetailInfo){
		return productDetailInfoService.selectProductDetailInfos(productDetailInfo);
	}
	
	@GetMapping("/productDetailInfo/{pdiId}")
	public ProductDetailInfoVO getProductDetailInfo(ProductDetailInfoVO productDetailInfo){
		return productDetailInfoService.selectProductDetailInfo(productDetailInfo);
	}
	
	@PostMapping("/productDetailInfo")
	public int addProductDetailInfo(@RequestBody ProductDetailInfoVO productDetailInfo) {
	    return productDetailInfoService.insertproductDetailInfo(productDetailInfo);
	}
}
