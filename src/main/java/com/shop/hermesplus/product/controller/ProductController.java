package com.shop.hermesplus.product.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.hermesplus.product.service.ProductService;
import com.shop.hermesplus.product.vo.ProductVO;

@RestController
public class ProductController {

	@Autowired
	private ProductService productService;

	@PostMapping("/product")
	public ResponseEntity<String> addProduct(
	        @RequestPart("productData") String productData,
	        @RequestPart("images") List<MultipartFile> images) {
	    try {
	        ObjectMapper objectMapper = new ObjectMapper();
	        ProductVO productVO = objectMapper.readValue(productData, ProductVO.class);

	        productService.insertProductWithDetails(productVO, images, productVO.getColorIds(), productVO.getSizeIds(), productVO.getMaterialIds(), productVO.getMainInfos());

	        return ResponseEntity.ok("상품이 성공적으로 등록되었습니다.");
	    } catch (IOException e) {
	        e.printStackTrace();
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("상품 등록 중 오류가 발생했습니다.");
	    }
	}

	@GetMapping("/product")
	public List<ProductVO> getProducts(ProductVO product) {
		return productService.selectProducts(product);
	}

	@GetMapping("/product/{piId}")
	public ProductVO getProduct(ProductVO product) {
		return productService.selectProduct(product);
	}

	@PutMapping("/product")
	public int updateProduct(@RequestBody ProductVO product) {
		return productService.updateProduct(product);
	}

	@DeleteMapping("/product/{piId}")
	public int deleteProduct(@PathVariable int piId) {
		return productService.deleteProduct(piId);
	}
}
