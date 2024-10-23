package com.shop.hermesPlus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesPlus.product.service.ProductPaymentService;
import com.shop.hermesPlus.product.vo.ProductPaymentVO;

@RestController
public class ProductPaymentController {

    @Autowired
    ProductPaymentService productPaymentService;
    
    @GetMapping("/productPayments")
    public List<ProductPaymentVO> getProductPayments() {
        return productPaymentService.selectProductPayments();
    }
    
    @PostMapping("/productPayment")
    public int addProductPayment(ProductPaymentVO productPayment) {
        return productPaymentService.insertProductPayment(productPayment);
    }
}