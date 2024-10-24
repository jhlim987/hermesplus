package com.shop.hermesplus.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesplus.product.vo.ProductPaymentVO;

@Mapper
public interface ProductPaymentMapper {
    List<ProductPaymentVO> selectProductPayments();
    ProductPaymentVO selectProductPayment(int ppId);
    int insertProductPayment(ProductPaymentVO productPayment);
    int updateProductPayment(ProductPaymentVO productPayment);
    int deleteProductPayment(int ppId);
}
