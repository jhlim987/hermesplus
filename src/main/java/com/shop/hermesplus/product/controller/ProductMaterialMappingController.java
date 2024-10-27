package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductMaterialMappingService;
import com.shop.hermesplus.product.vo.ProductMaterialMappingVO;

@RestController
public class ProductMaterialMappingController {

    @Autowired
    private ProductMaterialMappingService productMaterialMappingService;

    // Get all product material mappings
    @GetMapping("/productMaterialMapping")
    public List<ProductMaterialMappingVO> getAllProductMaterialMappings() {
        return productMaterialMappingService.getAllProductMaterialMappings();
    }

    // Get product material mapping by product ID
    @GetMapping("/productMaterialMapping/{piId}")
    public ProductMaterialMappingVO getProductMaterialMappingByProductId(ProductMaterialMappingVO productMaterialMapping) {
        return productMaterialMappingService.getProductMaterialMappingByProductId(productMaterialMapping);
    }

    // Add product material mapping
    @PostMapping("/productMaterialMapping")
    public int addProductMaterialMapping(@RequestBody ProductMaterialMappingVO productMaterialMapping) {
        return productMaterialMappingService.addProductMaterialMapping(productMaterialMapping);
    }

    // Update product material mapping
    @PutMapping("/productMaterialMapping")
    public int updateProductMaterialMapping(@RequestBody ProductMaterialMappingVO productMaterialMapping) {
        return productMaterialMappingService.updateProductMaterialMapping(productMaterialMapping);
    }

    // Delete product material mapping by product ID
    @DeleteMapping("/productMaterialMapping/{piId}")
    public int deleteProductMaterialMapping(@PathVariable int piId) {
        return productMaterialMappingService.deleteProductMaterialMapping(piId);
    }
}
