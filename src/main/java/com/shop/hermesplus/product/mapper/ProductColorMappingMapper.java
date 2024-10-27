package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.shop.hermesplus.product.vo.ProductColorMappingVO;

@Mapper
public interface ProductColorMappingMapper {

    // Select all product color mappings
    List<ProductColorMappingVO> selectProductColorMappings();

    // Select product color mappings by product ID
    ProductColorMappingVO selectProductColorMapping(ProductColorMappingVO productColorMapping);

    // Insert product color mapping
    int insertProductColorMapping(ProductColorMappingVO productColorMapping);

    // Update product color mapping
    int updateProductColorMapping(ProductColorMappingVO productColorMapping);

    // Delete product color mapping by product ID
    int deleteProductColorMapping(@Param("piId") int piId);
}