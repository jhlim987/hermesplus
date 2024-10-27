package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductMainInfoMapper;
import com.shop.hermesplus.product.vo.ProductMainInfoVO;

@Service
public class ProductMainInfoService {
	 @Autowired
	    ProductMainInfoMapper productMainInfoMapper;
	    
	    public List<ProductMainInfoVO> selectProductMainInfos() {
	        return productMainInfoMapper.selectProductMainInfos();
	    }

	    public ProductMainInfoVO selectProductMainInfo(int pmiId) {
	        return productMainInfoMapper.selectProductMainInfo(pmiId);
	    }

	    public int insertProductMainInfo(ProductMainInfoVO productMainInfo) {
	        return productMainInfoMapper.insertProductMainInfo(productMainInfo);
	    }

	    public int updateProductMainInfo(ProductMainInfoVO productMainInfo) {
	        return productMainInfoMapper.updateProductMainInfo(productMainInfo);
	    }

	    public int deleteProductMainInfo(int pmiId) {
	        return productMainInfoMapper.deleteProductMainInfo(pmiId);
	    }
	 // 주요 정보 저장
	    public int addProductMainInfo(ProductMainInfoVO mainInfoVO) {
	        return productMainInfoMapper.insertProductMainInfo(mainInfoVO);
	    }
}
