package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductMapper;
import com.shop.hermesplus.product.vo.ProductVO;

@Service
public class ProductService {
	@Autowired
	private ProductMapper productMapper;
	
	public List<ProductVO> selectProducts(ProductVO product){
		return productMapper.selectProducts(product);
	}
	public ProductVO selectProduct(int psId) {
		return productMapper.selectProduct(psId);
	}
	public int insertProduct(ProductVO product) {
		return productMapper.insertProduct(product);
	}
	public int updateProduct(ProductVO product) {
		return productMapper.updateProduct(product);
	}
	public int deleteProduct(int pId) {
		return productMapper.deleteProduct(pId);
	}
}

