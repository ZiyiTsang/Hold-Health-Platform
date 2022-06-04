package com.test;

import com.JDBC.ArticleDAO;
import com.redis.RedisOps;

import java.io.IOException;

public class testArticleDao {
    public static void main(String[] args) throws IOException {
        ArticleDAO ad=new ArticleDAO();
        System.out.println(ad.getTitleById(2));
    }
}
