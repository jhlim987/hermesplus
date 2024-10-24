package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.ReturnOrderVO;

public interface ReturnOrderMapper {

	List<ReturnOrderVO> selectReturnOrders(ReturnOrderVO returnOrder);
	ReturnOrderVO selectReturnOrder(int roNum);
	int insertReturnOrder(ReturnOrderVO returnOrder);
	int updateReturnOrder(ReturnOrderVO returnOrder);
	int deleteReturnOrder(int roNum);
}
