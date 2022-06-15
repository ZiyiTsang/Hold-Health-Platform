package com.mapper;

import com.POJO.ArticleBean;
import com.POJO.GoodBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodMapper {
    List<GoodBean> selectAll();
    GoodBean selectById(int goodId);

    GoodBean goodSelectById(int id);
    List<GoodBean> selectByName(String goodName);
    int addGood(@Param("goodName") String goodName,@Param("price") int price,@Param("introduction") String introduction,@Param("image") String image,@Param("monthlySales") int monthlySales);


    List<GoodBean> goodSelectByTag(String tag);
}
