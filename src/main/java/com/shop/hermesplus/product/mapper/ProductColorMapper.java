package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductColorVO;

@Mapper
public interface ProductColorMapper {
    List<ProductColorVO> selectProductColors();
    ProductColorVO selectProductColor(int pcId);
    int insertProductColor(ProductColorVO productColor);
    int updateProductColor(ProductColorVO productColor);
    int deleteProductColor(int pcId);
}
