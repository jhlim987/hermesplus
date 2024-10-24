package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductColorMapper;
import com.shop.hermesplus.product.vo.ProductColorVO;

@Service
public class ProductColorService {
    
    @Autowired
    ProductColorMapper productColorMapper;
    
    public List<ProductColorVO> selectProductColors() {
        return productColorMapper.selectProductColors();
    }

    public ProductColorVO selectProductColor(int pcId) {
        return productColorMapper.selectProductColor(pcId);
    }

    public int insertProductColor(ProductColorVO productColor) {
        return productColorMapper.insertProductColor(productColor);
    }

    public int updateProductColor(ProductColorVO productColor) {
        return productColorMapper.updateProductColor(productColor);
    }

    public int deleteProductColor(int pcId) {
        return productColorMapper.deleteProductColor(pcId);
    }
}
