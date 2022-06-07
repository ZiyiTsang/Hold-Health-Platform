package com.test;

import com.JDBC.ArticleDAO;
import com.POJO.ArticleBean;
import com.redis.RedisOps;

import java.io.IOException;

public class testArticleDao {
    public static void main(String[] args) throws IOException {
        ArticleDAO ad=new ArticleDAO();
        System.out.println(ad.getArticleById(6).getComment_cnt());
//        ArticleBean ab=new ArticleBean("title","content","tag","abstract","author");
//        ArticleBean ab1=new ArticleBean("title1","content2","tag3","abstract4","author");
//        System.out.println(ad.addArticleComplete(ab));
//        System.out.println(ad.addArticleComplete(ab1));



    }
}
