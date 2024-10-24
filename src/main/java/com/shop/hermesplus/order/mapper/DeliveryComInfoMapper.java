package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.DeliverycomInfoVO;

public interface DeliveryComInfoMapper {

	List<DeliverycomInfoVO> selectDeliveryComs(DeliverycomInfoVO deliveryCom);
	DeliverycomInfoVO selectDeliveryCom(int dciNum);
	int insertDeliveryCom(DeliverycomInfoVO deliveryCom);
	int updateDeliveryCom(DeliverycomInfoVO deliveryCom);
	int deleteDeliveryCom(int dciNum);
}
