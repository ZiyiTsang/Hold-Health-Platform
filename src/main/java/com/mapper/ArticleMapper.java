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
    int addArticleComplete(@Param("time") String time,@Param("title") String title,@Param("content") String content,@Param("tag") String tag,@Param("author") String author,@Param("abstract_") String abstract_ );
    void deleteAll();
    List<ArticleBean> selectByAuthor(String author);
    List<ArticleBean> selectByTag(String tag);
    void moreView(int id);

}
