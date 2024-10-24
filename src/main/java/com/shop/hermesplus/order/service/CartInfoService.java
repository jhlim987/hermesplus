package com.shop.hermesplus.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.order.mapper.CartInfoMapper;
import com.shop.hermesplus.order.vo.CartInfoVO;

@Service
public class CartInfoService {
	
	@Autowired
	private CartInfoMapper cartInfoMapper;
	
	public List<CartInfoVO> selectCarts(){
		return cartInfoMapper.selectCarts();
	}
	
	public CartInfoVO selectCart(int ciNum) {
		return cartInfoMapper.selectCart(ciNum);
	}
	
	public int insertCart(CartInfoVO cart) {
		return cartInfoMapper.insertCart(cart);
	}
	
	public int updateCart(CartInfoVO cart) {
		return cartInfoMapper.updateCart(cart);
	}
	
	public int deleteCart(int ciNum) {
		return cartInfoMapper.deleteCart(ciNum);
	}

}
