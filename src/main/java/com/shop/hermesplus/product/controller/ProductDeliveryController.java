package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductDeliveryService;
import com.shop.hermesplus.product.vo.ProductDeliveryVO;

@RestController
public class ProductDeliveryController {

    @Autowired
    ProductDeliveryService productDeliveryService;
    
    @GetMapping("/productDeliveries")
    public List<ProductDeliveryVO> getProductDeliveries() {
        return productDeliveryService.selectProductDeliveries();
    }
    
    @PostMapping("/productDelivery")
    public int addProductDelivery(ProductDeliveryVO productDelivery) {
        return productDeliveryService.insertProductDelivery(productDelivery);
    }
}
