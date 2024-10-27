package com.shop.hermesplus.product.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

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
	public int addProductImage(@ModelAttribute ProductImgVO productImgVO, @RequestParam("images") MultipartFile[] images) {
	    try {
	        // 배열을 리스트로 변환
	        List<MultipartFile> imageList = Arrays.asList(images);
	        return productImgService.saveProductImages(productImgVO.getPiId(), imageList);
	    } catch (IOException e) {
	        e.printStackTrace();
	        return 0;
	    }
	}
}
