package com.shop.hermesplus.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.product.mapper.ProductDeliveryMapper;
import com.shop.hermesplus.product.vo.ProductDeliveryVO;

@Service
public class ProductDeliveryService {
    
    @Autowired
    ProductDeliveryMapper productDeliveryMapper;
    
    public List<ProductDeliveryVO> selectProductDeliveries() {
        return productDeliveryMapper.selectProductDeliveries();
    }

    public ProductDeliveryVO selectProductDelivery(int pdId) {
        return productDeliveryMapper.selectProductDelivery(pdId);
    }

    public int insertProductDelivery(ProductDeliveryVO productDelivery) {
        return productDeliveryMapper.insertProductDelivery(productDelivery);
    }

    public int updateProductDelivery(ProductDeliveryVO productDelivery) {
        return productDeliveryMapper.updateProductDelivery(productDelivery);
    }

    public int deleteProductDelivery(int pdId) {
        return productDeliveryMapper.deleteProductDelivery(pdId);
    }
}
