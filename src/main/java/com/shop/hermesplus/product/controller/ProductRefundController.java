package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductRefundService;
import com.shop.hermesplus.product.vo.ProductRefundVO;

@RestController
public class ProductRefundController {

    @Autowired
    ProductRefundService productRefundService;
    
    @GetMapping("/productRefunds")
    public List<ProductRefundVO> getProductRefunds() {
        return productRefundService.selectProductRefunds();
    }
    
    @PostMapping("/productRefund")
    public int addProductRefund(ProductRefundVO productRefund) {
        return productRefundService.insertProductRefund(productRefund);
    }
}