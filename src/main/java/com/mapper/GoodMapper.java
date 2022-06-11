package com.mapper;

import com.POJO.GoodBean;

import java.util.List;

public interface GoodMapper {
    List<GoodBean> selectAll();
    GoodBean selectById(int goodId);
    GoodBean selectByName(String goodName);
    int addGood(String goodName,int price,String introduction,String image,int monthlySales);


}
