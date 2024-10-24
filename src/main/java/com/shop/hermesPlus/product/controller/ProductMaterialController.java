package com.shop.hermesPlus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesPlus.product.service.ProductMaterialService;
import com.shop.hermesPlus.product.vo.ProductMaterialVO;

@RestController
public class ProductMaterialController {

    @Autowired
    ProductMaterialService productMaterialService;
    
    @GetMapping("/productMaterials")
    public List<ProductMaterialVO> getProductMaterials() {
        return productMaterialService.selectProductMaterials();
    }
    
    @PostMapping("/productMaterial")
    public int addProductMaterial(ProductMaterialVO productMaterial) {
        return productMaterialService.insertProductMaterial(productMaterial);
    }
    
}
