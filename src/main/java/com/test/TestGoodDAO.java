package com.test;

import com.JDBC.GoodDAO;
import com.POJO.GoodBean;
import java.util.List;

import java.io.IOException;

public class TestGoodDAO {
    public static void main(String[] args) throws IOException {
        GoodDAO gd=new GoodDAO();
        GoodBean gb=new GoodBean("456",456,"789","789",999);
        //System.out.println(gd.getGoodsById(2));
        List<GoodBean> good= gd.getGoodByTag("food" );
        System.out.println(good);
        System.out.println(good.get(0).getColor());
    }
}
