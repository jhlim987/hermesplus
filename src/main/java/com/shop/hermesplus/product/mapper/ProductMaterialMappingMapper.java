package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductMaterialMappingVO;

@Mapper
public interface ProductMaterialMappingMapper {

    // Select all product material mappings
    List<ProductMaterialMappingVO> selectAllProductMaterialMappings();

    // Select product material mapping by product ID
    ProductMaterialMappingVO selectProductMaterialMapping(ProductMaterialMappingVO productMaterialMapping);

    // Insert product material mapping
    int insertProductMaterialMapping(ProductMaterialMappingVO productMaterialMapping);

    // Update product material mapping
    int updateProductMaterialMapping(ProductMaterialMappingVO productMaterialMapping);

    // Delete product material mapping by product ID
    int deleteProductMaterialMapping(int piId);
}
