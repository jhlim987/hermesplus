package com.shop.hermesPlus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesPlus.product.vo.ProductDeliveryVO;

@Mapper
public interface ProductDeliveryMapper {
    List<ProductDeliveryVO> selectProductDeliveries();
    ProductDeliveryVO selectProductDelivery(int pdId);
    int insertProductDelivery(ProductDeliveryVO productDelivery);
    int updateProductDelivery(ProductDeliveryVO productDelivery);
    int deleteProductDelivery(int pdId);
}
