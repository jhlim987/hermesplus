package com.shop.hermesplus.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.hermesplus.user.service.UserInfoService;
import com.shop.hermesplus.user.vo.UserInfoVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;
    
    @ResponseBody
    @PostMapping("/user/checkEmail")
    public int checkEmail(@RequestBody UserInfoVO user) {
        return userInfoService.selectEmail(user);
    }
    
    @ResponseBody
    @PostMapping("/user")
    public UserInfoVO login(@RequestBody UserInfoVO user,HttpSession session) {
        return userInfoService.selectUser(user,session);
    }
    
    @ResponseBody
    @PostMapping("/join")
    public int join(@RequestBody UserInfoVO user ) {
        return userInfoService.insertUser(user);
    }
}
