package com.shop.hermesPlus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesPlus.product.service.ProductColorService;
import com.shop.hermesPlus.product.vo.ProductColorVO;

@RestController
public class ProductColorController {

    @Autowired
    ProductColorService productColorService;
    
    @GetMapping("/productColors")
    public List<ProductColorVO> getProductColors() {
        return productColorService.selectProductColors();
    }
    
    @PostMapping("/productColor")
    public int addProductColor(ProductColorVO productColor) {
        return productColorService.insertProductColor(productColor);
    }
}
