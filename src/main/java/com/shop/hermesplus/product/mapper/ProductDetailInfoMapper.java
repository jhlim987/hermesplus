package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductDetailInfoVO;

@Mapper
public interface ProductDetailInfoMapper {

	List<ProductDetailInfoVO> selectProductDetailInfos(ProductDetailInfoVO productDetailInfo);
	ProductDetailInfoVO selectProductDetailInfo(ProductDetailInfoVO productDetailInfo);
	int insertProductDetailInfo(ProductDetailInfoVO productDetailInfo);
	int updateProductDetailInfo(ProductDetailInfoVO productDetailInfo);
	int deleteProductDetailInfo(ProductDetailInfoVO productDetailInfo);
}
