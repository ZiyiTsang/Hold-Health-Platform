package com.mapper;

import com.POJO.ArticleBean;
import com.POJO.UserBean;

import java.util.List;

public interface ArticleMapper {
    List<ArticleBean> selectAll();
    List<ArticleBean> selectById(int id);

}
