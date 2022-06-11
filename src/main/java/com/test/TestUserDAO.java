package com.test;

import com.JDBC.UserDAO;

import java.io.IOException;

public class TestUserDAO {
    public static void main(String[] args) throws IOException {
        UserDAO ud=new UserDAO();
//        ud.newUser("ziyi","ziyi7777");
//        ud.newUser("xiaotong","xiaotong7777");
//        ud.newUser("aofan","aofan7777");
//        ud.newUser("yanghang","yanghang7777");
//        ud.newUser("xianglong","xianglong7777");
        System.out.println(ud.validation("ziyi","0000"));
//        ud.updateUser("ziyi","0000");
    }
}
