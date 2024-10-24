package com.shop.hermesplus.order.mapper;

import java.util.List;

import com.shop.hermesplus.order.vo.BankcomInfoVO;

public interface BankComInfoMapper {
	List<BankcomInfoVO> selectBankcoms(BankcomInfoVO bankcom);
	BankcomInfoVO selectBankcom(int bciNum);
	int insertBankcom(BankcomInfoVO bankcom);
	int updateBankcom(BankcomInfoVO bankcom);
	int deleteBankcom(int bciNum);
}
