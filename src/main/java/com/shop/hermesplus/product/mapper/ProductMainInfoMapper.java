package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductMainInfoVO;

@Mapper
public interface ProductMainInfoMapper {
	List<ProductMainInfoVO> selectProductMainInfos();
    ProductMainInfoVO selectProductMainInfo(int pmiId);
    int insertProductMainInfo(ProductMainInfoVO productMainInfo);
    int updateProductMainInfo(ProductMainInfoVO productMainInfo);
    int deleteProductMainInfo(int pmiId);
}