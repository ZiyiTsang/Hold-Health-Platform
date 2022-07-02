package com.test;

import com.JDBC.GoodDAO;
import com.POJO.GoodBean;
import java.util.List;

import java.io.IOException;

public class TestGoodDAO {
    public static void main(String[] args) throws IOException {
        GoodDAO gd=new GoodDAO();
        System.out.println(gd.getGoodsById(1));

    }
}
