package com.shop.hermesPlus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.product.mapper.ProductRefundMapper;
import com.shop.hermesPlus.product.vo.ProductRefundVO;

@Service
public class ProductRefundService {
    
    @Autowired
    ProductRefundMapper productRefundMapper;
    
    public List<ProductRefundVO> selectProductRefunds() {
        return productRefundMapper.selectProductRefunds();
    }

    public ProductRefundVO selectProductRefund(int prId) {
        return productRefundMapper.selectProductRefund(prId);
    }

    public int insertProductRefund(ProductRefundVO productRefund) {
        return productRefundMapper.insertProductRefund(productRefund);
    }

    public int updateProductRefund(ProductRefundVO productRefund) {
        return productRefundMapper.updateProductRefund(productRefund);
    }

    public int deleteProductRefund(int prId) {
        return productRefundMapper.deleteProductRefund(prId);
    }
}