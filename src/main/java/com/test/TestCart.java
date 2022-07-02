package com.test;

import com.JDBC.CartDAO;

public class TestCart {
    public static void main(String[] args) {
        CartDAO cd=new CartDAO();
        System.out.println(cd.getAll("24"));
    }
}
