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
        UserBean user = ud.getUserById(8);
        System.out.println(user.getUsername());
        System.out.println(user.getProfile());
        //ud.newUser("ziyi","ziyi7777","https://s1.328888.xyz/2022/06/16/0ufOF.jpg","test");
//        ud.newUser("xiaotong","xiaotong7777");
//        ud.newUser("aofan","aofan7777");
//        ud.newUser("yanghang","yanghang7777");
//        ud.newUser("xianglong","xianglong7777");
        //System.out.println(ud.validation("ziyi","0000"));
//        ud.updateUser("ziyi","0000");
        email mail=new email();
        mail.sendEmail("swe2009514@xmu.edu.my",1234, true);//1034337098@qq.com
        //mail.email();

        //id = true 发送验证码
        //id = false 发送用户购买信息到我们的邮箱提示需要发货



    }
    }

