package com.shop.hermesPlus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.product.mapper.ProductAddInfoMapper;
import com.shop.hermesPlus.product.vo.ProductAddInfoVO;

@Service
public class ProductAddInfoService {
	
	@Autowired
	ProductAddInfoMapper productAddInfoMapper;
	
	public List<ProductAddInfoVO> selectProductAddInfos(ProductAddInfoVO productAddInfo){
		return productAddInfoMapper.selectProductAddInfos(productAddInfo);
	}
	public ProductAddInfoVO selectProductAddInfo(ProductAddInfoVO productAddInfo) {
		return productAddInfoMapper.selectProductAddInfo(productAddInfo);
	}
	public int insertProductAddInfo(ProductAddInfoVO productAddInfo) {
		return productAddInfoMapper.insertProductAddInfo(productAddInfo);
	}
	public int updateProductAddInfo(ProductAddInfoVO productAddInfo) {
		return productAddInfoMapper.updateProductAddInfo(productAddInfo);
	}
	public int deleteProductAddInfo(int paiId) {
		return productAddInfoMapper.deleteProductAddInfo(paiId);
	}
}
