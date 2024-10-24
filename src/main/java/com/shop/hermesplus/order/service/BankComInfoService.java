package com.shop.hermesPlus.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.order.mapper.BankComInfoMapper;
import com.shop.hermesPlus.order.vo.BankcomInfoVO;

@Service
public class BankComInfoService {

	@Autowired
	private BankComInfoMapper bankComInfoMapper;
	
	public List<BankcomInfoVO> selectBankcoms(BankcomInfoVO bankCom){
		return bankComInfoMapper.selectBankcoms(bankCom);
	}
	
	public BankcomInfoVO selectBankcom(int bciNum) {
		return bankComInfoMapper.selectBankcom(bciNum);
	}
	
	public int insertBankcom(BankcomInfoVO bankCom) {
		return bankComInfoMapper.insertBankcom(bankCom);
	}
	
	public int updateBankcom(BankcomInfoVO bankcom) {
		return bankComInfoMapper.updateBankcom(bankcom);
	}
	
	public int deleteBankcom(int bciNum) {
		return bankComInfoMapper.deleteBankcom(bciNum);
	}
}
