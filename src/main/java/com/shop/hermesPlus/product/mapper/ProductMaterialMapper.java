package com.shop.hermesPlus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesPlus.product.vo.ProductMaterialVO;

@Mapper
public interface ProductMaterialMapper {
    List<ProductMaterialVO> selectProductMaterials();
    ProductMaterialVO selectProductMaterial(int pmId);
    int insertProductMaterial(ProductMaterialVO productMaterial);
    int updateProductMaterial(ProductMaterialVO productMaterial);
    int deleteProductMaterial(int pmId);
}
