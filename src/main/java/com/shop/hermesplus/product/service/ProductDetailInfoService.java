package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductDetailInfoMapper;
import com.shop.hermesplus.product.vo.ProductDetailInfoVO;

@Service
public class ProductDetailInfoService {
	@Autowired
	private ProductDetailInfoMapper productDetailInfoMapper;

	public List<ProductDetailInfoVO> selectProductDetailInfos(ProductDetailInfoVO productDetailInfo){
		return productDetailInfoMapper.selectProductDetailInfos(productDetailInfo);
	}
	public ProductDetailInfoVO selectProductDetailInfo(ProductDetailInfoVO productDetailInfo) {
		return productDetailInfoMapper.selectProductDetailInfo(productDetailInfo);
	}
	public int insertproductDetailInfo(ProductDetailInfoVO productDetailInfo) {
	    System.out.println("Inserting product detail info: " + productDetailInfo);
	    return productDetailInfoMapper.insertProductDetailInfo(productDetailInfo);
	}
	public int updateproductDetailInfo(ProductDetailInfoVO productDetailInfo) {
		return productDetailInfoMapper.updateProductDetailInfo(productDetailInfo);
	}
	public int deleteproductDetailInfo(ProductDetailInfoVO productDetailInfo) {
		return productDetailInfoMapper.deleteProductDetailInfo(productDetailInfo);
	}
}
