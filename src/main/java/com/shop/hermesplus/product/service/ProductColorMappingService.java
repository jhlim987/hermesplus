package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductColorMappingMapper;
import com.shop.hermesplus.product.vo.ProductColorMappingVO;

@Service
public class ProductColorMappingService {

    @Autowired
    private ProductColorMappingMapper productColorMappingMapper;

    // Select all product color mappings
    public List<ProductColorMappingVO> getAllProductColorMappings() {
        return productColorMappingMapper.selectProductColorMappings();
    }

    // Select product color mappings by product ID
    public ProductColorMappingVO getProductColorMappingsByProductId(ProductColorMappingVO productColorMapping) {
        return productColorMappingMapper.selectProductColorMapping(productColorMapping);
    }

    // Insert product color mapping
    public int addProductColorMapping(ProductColorMappingVO productColorMapping) {
        return productColorMappingMapper.insertProductColorMapping(productColorMapping);
    }

    // Update product color mapping
    public int updateProductColorMapping(ProductColorMappingVO productColorMapping) {
        return productColorMappingMapper.updateProductColorMapping(productColorMapping);
    }

    // Delete product color mapping by product ID
    public int deleteProductColorMappingByProductId(int piId) {
        return productColorMappingMapper.deleteProductColorMapping(piId);
    }
    
 // 색상 매핑 저장
    public int saveColorMapping(int productId, int colorId) {
        ProductColorMappingVO colorMapping = new ProductColorMappingVO();
        colorMapping.setPiId(productId);
        colorMapping.setPcId(colorId);
        return productColorMappingMapper.insertProductColorMapping(colorMapping);
    }
}

