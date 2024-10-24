package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.ExchangeOrderVO;

public interface ExchangeOrderMapper {

	List<ExchangeOrderVO> selectExchangeOrders(ExchangeOrderVO exchangeOrder);
	ExchangeOrderVO selectExchangeOrder(int eoNum);
	int insertExchangeOrder(ExchangeOrderVO exchangeOrder);
	int updateExchangeOrder(ExchangeOrderVO exchangeOrder);
	int deleteExchangeOrder(int eoNum);
}
