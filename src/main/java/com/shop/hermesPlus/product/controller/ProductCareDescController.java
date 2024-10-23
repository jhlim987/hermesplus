package com.shop.hermesPlus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesPlus.product.service.ProductCareDescService;
import com.shop.hermesPlus.product.vo.ProductCareDescVO;

@RestController
public class ProductCareDescController {

    @Autowired
    ProductCareDescService productCareDescService;
    
    @GetMapping("/productCareDescs")
    public List<ProductCareDescVO> getProductCareDescs() {
        return productCareDescService.selectProductCareDescs();
    }
    
    @PostMapping("/productCareDesc")
    public int addProductCareDesc(ProductCareDescVO productCareDesc) {
        return productCareDescService.insertProductCareDesc(productCareDesc);
    }
}