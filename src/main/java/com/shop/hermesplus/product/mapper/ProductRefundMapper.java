package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductRefundVO;

@Mapper
public interface ProductRefundMapper {
    List<ProductRefundVO> selectProductRefunds();
    ProductRefundVO selectProductRefund(int prId);
    int insertProductRefund(ProductRefundVO productRefund);
    int updateProductRefund(ProductRefundVO productRefund);
    int deleteProductRefund(int prId);
}
