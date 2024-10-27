package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductSizeMappingVO;

@Mapper
public interface ProductSizeMappingMapper {
    List<ProductSizeMappingVO> selectProductSizeMappings();
    ProductSizeMappingVO selectProductSizeMapping(int piId);
    int insertProductSizeMapping(ProductSizeMappingVO productSizeMappingVO);
    int updateProductSizeMapping(ProductSizeMappingVO productSizeMappingVO);
    int deleteProductSizeMapping(int piId);
}
