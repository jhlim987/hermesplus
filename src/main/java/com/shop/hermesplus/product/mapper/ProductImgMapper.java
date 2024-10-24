package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductImgVO;

@Mapper
public interface ProductImgMapper {

	List<ProductImgVO> selectProductImgs(ProductImgVO productImg);

	ProductImgVO selectProductImg(ProductImgVO productImg);

	int insertProductImg(ProductImgVO productImg);
	
	int updateProductImg(ProductImgVO productImg);

	int deleteProductImg(int piId);
}