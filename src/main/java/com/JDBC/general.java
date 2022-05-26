package com.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class general {
    public static Connection getconnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(url, user, password);
    }
    public static String driver = "com.mysql.jdbc.Driver";//定义驱动
    public static String url = "jdbc:mysql://rm-wz96623i6dr5m67q52o.mysql.rds.aliyuncs.com:3306/pe_db?useUnicode=true&characterEncoding=utf-8";//定义URL
    public static String user = "pe";//定义用户名
    public static String password = "Hahahaha666";//定义密码

}
