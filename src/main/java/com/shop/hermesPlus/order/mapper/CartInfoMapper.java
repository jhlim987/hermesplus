package com.shop.hermesPlus.order.mapper;

import java.util.List;

import com.shop.hermesPlus.order.vo.CartInfoVO;

public interface CartInfoMapper {
	
	List<CartInfoVO> selectCarts();
	CartInfoVO selectCart(int ciNum);
	int insertCart(CartInfoVO cart);
	int updateCart(CartInfoVO cart);
	int deleteCart(int ciNum);
}
