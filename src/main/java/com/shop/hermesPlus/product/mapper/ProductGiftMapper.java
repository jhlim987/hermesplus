package com.shop.hermesPlus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesPlus.product.vo.ProductGiftVO;

@Mapper
public interface ProductGiftMapper {
    List<ProductGiftVO> selectProductGifts();
    ProductGiftVO selectProductGift(int pgId);
    int insertProductGift(ProductGiftVO productGift);
    int updateProductGift(ProductGiftVO productGift);
    int deleteProductGift(int pgId);
}