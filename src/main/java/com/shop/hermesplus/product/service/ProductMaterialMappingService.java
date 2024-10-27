package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductMaterialMappingMapper;
import com.shop.hermesplus.product.vo.ProductMaterialMappingVO;

@Service
public class ProductMaterialMappingService {

    @Autowired
    private ProductMaterialMappingMapper productMaterialMappingMapper;

    // Get all product material mappings
    public List<ProductMaterialMappingVO> getAllProductMaterialMappings() {
        return productMaterialMappingMapper.selectAllProductMaterialMappings();
    }

    // Get product material mapping by product ID
    public ProductMaterialMappingVO getProductMaterialMappingByProductId(ProductMaterialMappingVO productMaterialMapping) {
        return productMaterialMappingMapper.selectProductMaterialMapping(productMaterialMapping);
    }

    // Add product material mapping
    public int addProductMaterialMapping(ProductMaterialMappingVO productMaterialMapping) {
        return productMaterialMappingMapper.insertProductMaterialMapping(productMaterialMapping);
    }

    // Update product material mapping
    public int updateProductMaterialMapping(ProductMaterialMappingVO productMaterialMapping) {
        return productMaterialMappingMapper.updateProductMaterialMapping(productMaterialMapping);
    }

    // Delete product material mapping by product ID
    public int deleteProductMaterialMapping(int piId) {
        return productMaterialMappingMapper.deleteProductMaterialMapping(piId);
    }
    
    // 소재 매핑 저장
    public int saveMaterialMapping(int productId, int materialId) {
        ProductMaterialMappingVO materialMapping = new ProductMaterialMappingVO();
        materialMapping.setPiId(productId);
        materialMapping.setPmId(materialId);
        return productMaterialMappingMapper.insertProductMaterialMapping(materialMapping);
    }
}
