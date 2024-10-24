package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.CardcomInfoVO;

public interface CardComInfoMapper {
	List<CardcomInfoVO> selectCardcoms(CardcomInfoVO cardcom);
	CardcomInfoVO selectCardcom(int cciNum);
	int insertCardcom(CardcomInfoVO cardcom);
	int updateCardcom(CardcomInfoVO cardcom);
	int deleteCardcom(int cciNum);
}
