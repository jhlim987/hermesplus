package com.shop.hermesplus.user.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.hermesplus.user.mapper.UserInfoMapper;
import com.shop.hermesplus.user.vo.UserInfoVO;

@Service
public class UserInfoService {
    @Autowired
    private UserInfoMapper userInfoMapper;
    
    public List<UserInfoVO> selectUsers(UserInfoVO userInfoVO){
        return null;
    }
    public UserInfoVO selectUser(UserInfoVO userInfoVO,HttpSession session){
        UserInfoVO loginUser = userInfoMapper.selectUserForLogin(userInfoVO);
        //세션에 저장을 해야함 이건 서비스에서 해줘야함.
        if(loginUser!= null) {
            session.setAttribute("user", loginUser);
        }
        return loginUser;
    }
    public int selectEmail(UserInfoVO user) {
        return userInfoMapper.selectEmail(user);
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
