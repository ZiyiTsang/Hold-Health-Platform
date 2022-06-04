package com.mapper;

import com.POJO.ArticleBean;
import com.POJO.UserBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {
    List<ArticleBean> selectAll();
    ArticleBean selectById(int id);
    List<ArticleBean> selectBetweenId(@Param("idFirst") int idFirst,@Param("idLast") int idLast);
    int addArticle(@Param("title") String title,@Param("content") String content,@Param("time") String time);
    void deleteById(int id);
    ArticleBean selectTitleById(int id);

}
