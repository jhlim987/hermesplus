package com.shop.hermesPlus.user.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.shop.hermesPlus.user.vo.UserInfoVO;

@Mapper
public interface UserInfoMapper {
    public List<UserInfoVO> selectUsers(UserInfoVO userInfoVO);
    public UserInfoVO selectUser(UserInfoVO userInfoVO);
    public UserInfoVO selectUserForLogin(UserInfoVO userInfoVO);
    public int selectEmail(UserInfoVO userInfoVO);
    public int updateUser(UserInfoVO userInfoVO);
    public int insertUser(UserInfoVO userInfoVO);
    public int deleteUser(int uiNum);
}
