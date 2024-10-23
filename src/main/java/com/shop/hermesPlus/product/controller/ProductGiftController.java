package com.shop.hermesPlus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesPlus.product.service.ProductGiftService;
import com.shop.hermesPlus.product.vo.ProductGiftVO;

@RestController
public class ProductGiftController {

    @Autowired
    ProductGiftService productGiftService;
    
    @GetMapping("/productGifts")
    public List<ProductGiftVO> getProductGifts() {
        return productGiftService.selectProductGifts();
    }
    
    @PostMapping("/productGift")
    public int addProductGift(ProductGiftVO productGift) {
        return productGiftService.insertProductGift(productGift);
    }
}
