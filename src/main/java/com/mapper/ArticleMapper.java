package com.mapper;

import com.POJO.ArticleBean;
import com.POJO.UserBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {
    List<ArticleBean> selectAll();
    List<ArticleBean> selectById(int id);
    List<ArticleBean> selectBetweenId(@Param("idFirst") int idFirst,@Param("idLast") int idLast);

}
