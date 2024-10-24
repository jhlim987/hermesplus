package com.shop.hermesPlus.order.mapper;

import java.util.List;

import com.shop.hermesPlus.order.vo.CardcomInfoVO;

public interface CardComInfoMapper {
	List<CardcomInfoVO> selectCardcoms(CardcomInfoVO cardcom);
	CardcomInfoVO selectCardcom(int cciNum);
	int insertCardcom(CardcomInfoVO cardcom);
	int updateCardcom(CardcomInfoVO cardcom);
	int deleteCardcom(int cciNum);
}
