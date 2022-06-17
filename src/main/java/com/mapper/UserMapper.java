package com.mapper;

import com.POJO.UserBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    List<UserBean> selectAll();
    UserBean selectById(int id);
    UserBean selectByUserName(String username);
    int addUser(@Param("username") String username, @Param("password") String password, @Param("profile") String profile, @Param("email") String email);
    int updatePassword(@Param("username") String username,@Param("password") String password, @Param("profile") String profile, @Param("email") String email);
}
