package com.shop.hermesPlus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.product.mapper.ProductPaymentMapper;
import com.shop.hermesPlus.product.vo.ProductPaymentVO;

@Service
public class ProductPaymentService {
    
    @Autowired
    ProductPaymentMapper productPaymentMapper;
    
    public List<ProductPaymentVO> selectProductPayments() {
        return productPaymentMapper.selectProductPayments();
    }

    public ProductPaymentVO selectProductPayment(int ppId) {
        return productPaymentMapper.selectProductPayment(ppId);
    }

    public int insertProductPayment(ProductPaymentVO productPayment) {
        return productPaymentMapper.insertProductPayment(productPayment);
    }

    public int updateProductPayment(ProductPaymentVO productPayment) {
        return productPaymentMapper.updateProductPayment(productPayment);
    }

    public int deleteProductPayment(int ppId) {
        return productPaymentMapper.deleteProductPayment(ppId);
    }
}
