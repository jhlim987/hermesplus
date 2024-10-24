package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.CartInfoVO;

public interface CartInfoMapper {
	
	List<CartInfoVO> selectCarts();
	CartInfoVO selectCart(int ciNum);
	int insertCart(CartInfoVO cart);
	int updateCart(CartInfoVO cart);
	int deleteCart(int ciNum);
}
