package com.shop.hermesPlus.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shop.hermesPlus.user.vo.AddressInfoVO;

@Mapper
public interface AddressInfoMapper {
    public List<AddressInfoVO> selectAddress(AddressInfoVO addressInfoVO);
    public AddressInfoVO selectUser(AddressInfoVO addressInfoVO);
    public int updateUser(AddressInfoVO addressInfoVO);
    public int insertUser(AddressInfoVO addressInfoVO);
    public int deleteUser(int aiNum);
}
