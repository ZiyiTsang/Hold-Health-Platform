package com.test;

import com.POJO.ArticleBean;
import com.POJO.UserBean;
import com.mapper.ArticleMapper;
import com.mapper.UserMapper;
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
        SqlSession sqlsession=sqlSessionFactory.openSession(true);
//        List<ArticleBean> articles=sqlsession.selectList("article.selectAll");

        ArticleMapper am=sqlsession.getMapper(ArticleMapper.class);
        List<ArticleBean> articles=am.selectBetweenId(0,3);
        UserMapper um=sqlsession.getMapper(UserMapper.class);
        UserBean users=um.selectByUserName("999");
        um.updatePassword("xiaotong","9999", "https://s1.328888.xyz/2022/06/16/0ufOF.jpg","email");
//        int id=um.addUser("xiaotong","7979");
//        sqlsession.commit();
//        System.out.println(articles);
//        System.out.println(users.getPassword());
//        System.out.println(id);
        sqlsession.close();
    }
}
