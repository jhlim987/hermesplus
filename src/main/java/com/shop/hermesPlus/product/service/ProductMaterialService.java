package com.shop.hermesPlus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.product.mapper.ProductMaterialMapper;
import com.shop.hermesPlus.product.vo.ProductMaterialVO;

@Service
public class ProductMaterialService {
    
    @Autowired
    ProductMaterialMapper productMaterialMapper;
    
    public List<ProductMaterialVO> selectProductMaterials() {
        return productMaterialMapper.selectProductMaterials();
    }

    public ProductMaterialVO selectProductMaterial(int pmId) {
        return productMaterialMapper.selectProductMaterial(pmId);
    }

    public int insertProductMaterial(ProductMaterialVO productMaterial) {
        return productMaterialMapper.insertProductMaterial(productMaterial);
    }

    public int updateProductMaterial(ProductMaterialVO productMaterial) {
        return productMaterialMapper.updateProductMaterial(productMaterial);
    }

    public int deleteProductMaterial(int pmId) {
        return productMaterialMapper.deleteProductMaterial(pmId);
    }
}