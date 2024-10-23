package com.shop.hermesPlus.user.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.hermesPlus.user.service.UserInfoService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;
    
    @ResponseBody
    @PostMapping("/user/checkEmail")
    public int login(@RequestBody String uiEmail, Model model) {
        return userInfoService.selectEmail(uiEmail);
    }
}
