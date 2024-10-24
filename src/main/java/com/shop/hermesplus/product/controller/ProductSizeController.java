package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductSizeService;
import com.shop.hermesplus.product.vo.ProductSizeVO;

@RestController
public class ProductSizeController {

    @Autowired
    ProductSizeService productSizeService;
    
    @GetMapping("/productSizes")
    public List<ProductSizeVO> getProductSizes() {
        return productSizeService.selectProductSizes();
    }
    
    @PostMapping("/productSize")
    public int addProductSize(ProductSizeVO productSize) {
        return productSizeService.insertProductSize(productSize);
    }
}
