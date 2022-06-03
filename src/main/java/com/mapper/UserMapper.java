package com.mapper;

import com.POJO.UserBean;

import java.util.List;

public interface UserMapper {
    List<UserBean> selectAll();
    UserBean selectById(int id);
    UserBean selectByUserName(String username);
}
