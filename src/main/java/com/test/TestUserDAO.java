package com.test;

import com.JDBC.UserDAO;
import com.POJO.UserBean;
import com.test.email;


import javax.mail.MessagingException;
import java.io.IOException;
import com.test.email;


public class TestUserDAO {
    public static void main(String[] args) throws IOException, MessagingException {
        UserDAO ud=new UserDAO();
//        UserBean user = ud.getUserById(8);
//        System.out.println(user.getUsername());
//        System.out.println(user.getProfile());
        ud.newUser("tqq","56666666",false,"test@qq.com");
//        ud.newUser("xiaotong","xiaotong7777");
//        ud.newUser("aofan","aofan7777");
//        ud.newUser("yanghang","yanghang7777");
//        ud.newUser("xianglong","xianglong7777");
        //System.out.println(ud.validation("ziyi","0000"));
//        ud.updateUser("ziyi","0000")
        //mail.email();

        //id = true 发送验证码
        //id = false 发送用户购买信息到我们的邮箱提示需要发货user
    }
    }

