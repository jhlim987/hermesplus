package com.shop.hermesPlus.order.mapper;

import java.util.List;

import com.shop.hermesPlus.order.vo.OrdersVO;

public interface OrdersMapper {
	List<OrdersVO> selectOrderAll(OrdersVO order);
	OrdersVO selectOrder(int orNum);
	int insertOrder(OrdersVO order);
	int updateOrder(OrdersVO order);
	int deleteOrder(int orNum);
}
