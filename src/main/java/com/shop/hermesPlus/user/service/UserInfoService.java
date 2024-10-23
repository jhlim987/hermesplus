package com.shop.hermesPlus.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesPlus.user.mapper.UserInfoMapper;
import com.shop.hermesPlus.user.vo.UserInfoVO;

@Service
public class UserInfoService {
    @Autowired
    private UserInfoMapper userInfoMapper;
    
    public List<UserInfoVO> selectUsers(UserInfoVO userInfoVO){
        return null;
    }
    public UserInfoVO selectUser(UserInfoVO userInfoVO){
        return null;
    }
    public int selectEmail(String uiEmail) {
        return userInfoMapper.selectEmail(uiEmail);
    }
    public int updateUser(UserInfoVO userInfoVO){
        return 0;
    }
    public int insertUser(UserInfoVO userInfoVO){
        return 0;
    }
    public int deleteUser(int uiNum){
        return 0;
    }
}
