package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.PaymentInfoVO;

public interface PaymentInfoMapper {

	List<PaymentInfoVO> selectPayinfos(PaymentInfoVO payinfo);
	PaymentInfoVO selectPayinfo(int paiNum);
	int insertPayinfo(PaymentInfoVO payinfo);
	int updatePayinfo(PaymentInfoVO payinfo);
	int deletePayinfo(int paiNum);
}
