package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.CardcomInfoVO;

public interface BankComInfoMapper {
	List<CardcomInfoVO> selectBankcoms(CardcomInfoVO cardcom);
	CardcomInfoVO selectBankcom(int cciNum);
	int insertBankcom(CardcomInfoVO cardcom);
	int updateBankcom(CardcomInfoVO cardcom);
	int deleteBankcom(int cciNum);
}
