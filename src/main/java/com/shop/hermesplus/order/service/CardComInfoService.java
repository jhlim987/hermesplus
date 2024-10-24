package com.shop.hermesplus.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.order.mapper.CardComInfoMapper;
import com.shop.hermesplus.order.vo.CardcomInfoVO;

@Service
public class CardComInfoService {

	@Autowired
	private CardComInfoMapper cardComInfoMapper;
	
	public List<CardcomInfoVO> selectCardComs(CardcomInfoVO cardCom){
		return cardComInfoMapper.selectCardcoms(cardCom);
	}
	
	public CardcomInfoVO selectCardCom(int cciNum) {
		return cardComInfoMapper.selectCardcom(cciNum);
	}
	
	public int insertCardCom(CardcomInfoVO cardCom) {
		return cardComInfoMapper.insertCardcom(cardCom);
	}
	
	public int updateCardCom(CardcomInfoVO cardCom) {
		return cardComInfoMapper.updateCardcom(cardCom);
	}
	
	public int deleteCardCom(int cciNum) {
		return cardComInfoMapper.deleteCardcom(cciNum);
	}
}
