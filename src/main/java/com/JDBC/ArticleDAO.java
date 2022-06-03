package com.JDBC;

import com.POJO.ArticleBean;
import com.mapper.ArticleMapper;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.List;

public class ArticleDAO extends baseDAO{
    private final ArticleMapper mapper;
    private final SqlSession sqlSession;
    public ArticleDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(ArticleMapper.class);
    }
    public ArticleBean getArticleById(int id){
        return mapper.selectById(id);
    }
    public  List<ArticleBean> getArticleBetweenId(int idFirst, int idLast){
        return mapper.selectBetweenId(idFirst,idLast);
    }
    public  List<ArticleBean> getAllArticle(){
        return mapper.selectAll();
    }
}
