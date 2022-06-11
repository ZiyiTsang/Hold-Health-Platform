package com.mapper;

import com.POJO.GoodBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodMapper {
    List<GoodBean> selectAll();
    GoodBean selectById(int goodId);
    List<GoodBean> selectByName(String goodName);
    int addGood(@Param("goodName") String goodName,@Param("price") int price,@Param("introduction") String introduction,@Param("image") String image,@Param("monthlySales") int monthlySales);


}
