package com.test;

import com.POJO.ArticleBean;
import com.POJO.UserBean;
import com.mapper.ArticleMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MybatisIntro {
    public static void main(String[] args) throws IOException {
        String resource = "mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resource);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlsession=sqlSessionFactory.openSession();
//        List<ArticleBean> articles=sqlsession.selectList("article.selectAll");
        ArticleMapper am=sqlsession.getMapper(ArticleMapper.class);
        List<ArticleBean> articles=am.selectById(1);
        System.out.print(articles);

        sqlsession.close();
    }
}
