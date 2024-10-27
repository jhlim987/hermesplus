package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductSizeMappingMapper;
import com.shop.hermesplus.product.vo.ProductSizeMappingVO;

@Service
public class ProductSizeMappingService {

    @Autowired
    private ProductSizeMappingMapper productSizeMappingMapper;

    public List<ProductSizeMappingVO> getAllProductSizeMappings() {
        return productSizeMappingMapper.selectProductSizeMappings();
    }

    public ProductSizeMappingVO getProductSizeMapping(int piId) {
        return productSizeMappingMapper.selectProductSizeMapping(piId);
    }

    public int addProductSizeMapping(ProductSizeMappingVO productSizeMappingVO) {
        return productSizeMappingMapper.insertProductSizeMapping(productSizeMappingVO);
    }

    public int updateProductSizeMapping(ProductSizeMappingVO productSizeMappingVO) {
        return productSizeMappingMapper.updateProductSizeMapping(productSizeMappingVO);
    }

    public int deleteProductSizeMapping(int piId) {
        return productSizeMappingMapper.deleteProductSizeMapping(piId);
    }
    
 // 사이즈 매핑 저장
    public int saveSizeMapping(int productId, int sizeId) {
        ProductSizeMappingVO sizeMapping = new ProductSizeMappingVO();
        sizeMapping.setPiId(productId);
        sizeMapping.setPsId(sizeId);
        return productSizeMappingMapper.insertProductSizeMapping(sizeMapping);
    }
}
