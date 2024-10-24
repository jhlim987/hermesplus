package com.shop.hermesPlus.order.mapper;

import java.util.List;

import com.shop.hermesPlus.order.vo.OrderItemVO;

public interface OrderItemMapper {
	List<OrderItemVO> selectOrderItems(OrderItemVO orderItem);
	OrderItemVO selectOrderItem(int oiNum);
	int insertOrderItem(OrderItemVO orderItem);
	int updateOrderItem(OrderItemVO orderItem);
	int deleteOrderItem(int oiNum);
}
