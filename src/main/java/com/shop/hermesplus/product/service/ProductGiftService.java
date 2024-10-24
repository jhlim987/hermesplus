package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductGiftMapper;
import com.shop.hermesplus.product.vo.ProductGiftVO;

@Service
public class ProductGiftService {
    
    @Autowired
    ProductGiftMapper productGiftMapper;
    
    public List<ProductGiftVO> selectProductGifts() {
        return productGiftMapper.selectProductGifts();
    }

    public ProductGiftVO selectProductGift(int pgId) {
        return productGiftMapper.selectProductGift(pgId);
    }

    public int insertProductGift(ProductGiftVO productGift) {
        return productGiftMapper.insertProductGift(productGift);
    }

    public int updateProductGift(ProductGiftVO productGift) {
        return productGiftMapper.updateProductGift(productGift);
    }

    public int deleteProductGift(int pgId) {
        return productGiftMapper.deleteProductGift(pgId);
    }
}
