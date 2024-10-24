package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductImgMapper;
import com.shop.hermesplus.product.vo.ProductImgVO;

@Service
public class ProductImgService {
	@Autowired
	ProductImgMapper productImgMapper;
	
	public List<ProductImgVO> selectProductImgs(ProductImgVO productImg){
		return productImgMapper.selectProductImgs(productImg);
	}

	public ProductImgVO selectProductImg(ProductImgVO productImg) {
		return productImgMapper.selectProductImg(productImg);
	}

	public int insertProductImg(ProductImgVO productImg) {
		return productImgMapper.insertProductImg(productImg);
	}
	
	public int updateProductImg(ProductImgVO productImg) {
		return productImgMapper.updateProductImg(productImg);
	}

	public int deleteProductImg(int piId) {
		return productImgMapper.deleteProductImg(piId);
	}
}
