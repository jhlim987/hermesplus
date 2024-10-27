package com.shop.hermesplus.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.shop.hermesplus.product.service.ProductColorMappingService;
import com.shop.hermesplus.product.vo.ProductColorMappingVO;

@RestController
public class ProductColorMappingController {

    @Autowired
    private ProductColorMappingService productColorMappingService;

    // Get all product color mappings
    @GetMapping("/productColorMapping")
    public List<ProductColorMappingVO> getAllProductColorMappings() {
        return productColorMappingService.getAllProductColorMappings();
    }

    // Get product color mappings by product ID
    @GetMapping("/productColorMapping/{piId}")
    public ProductColorMappingVO getProductColorMappingsByProductId(ProductColorMappingVO productColorMapping) {
        return productColorMappingService.getProductColorMappingsByProductId(productColorMapping);
    }

    // Add product color mapping
    @PostMapping("/productColorMapping")
    public int addProductColorMapping(ProductColorMappingVO productColorMapping) {
        return productColorMappingService.addProductColorMapping(productColorMapping);
    }

    // Update product color mapping
    @PutMapping("/productColorMapping")
    public int updateProductColorMapping(ProductColorMappingVO productColorMapping) {
        return productColorMappingService.updateProductColorMapping(productColorMapping);
    }

    // Delete product color mapping by product ID
    @DeleteMapping("/productColorMapping/{piId}")
    public int deleteProductColorMappingByProductId(@PathVariable int piId) {
        return productColorMappingService.deleteProductColorMappingByProductId(piId);
    }
}
