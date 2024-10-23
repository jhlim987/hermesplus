package com.shop.hermesPlus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesPlus.product.vo.ProductAddInfoVO;

@Mapper
public interface ProductAddInfoMapper {
	List<ProductAddInfoVO> selectProductAddInfos(ProductAddInfoVO productAddInfo);
	ProductAddInfoVO selectProductAddInfo(ProductAddInfoVO productAddInfo);
	int insertProductAddInfo(ProductAddInfoVO productAddInfo);
	int updateProductAddInfo(ProductAddInfoVO productAddInfo);
	int deleteProductAddInfo(int paiId);
}
