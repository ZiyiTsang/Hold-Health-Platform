package com.test;

import com.JDBC.CartDAO;

public class TestCart {
    public static void main(String[] args) {
        CartDAO cd=new CartDAO();
        cd.addCart("24","1","8");
    }
}
