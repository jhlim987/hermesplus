package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductVO;

@Mapper
public interface ProductMapper {
	List<ProductVO> selectProducts(ProductVO product);
	ProductVO selectProduct(ProductVO product);
	int insertProduct(ProductVO product);
	int updateProduct(ProductVO product);
	int deleteProduct(int pId);
}