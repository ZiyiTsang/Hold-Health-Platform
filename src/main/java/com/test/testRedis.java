package com.test;

import com.redis.RedisOps;

public class testRedis {
    public static void main(String[] args) {
        RedisOps redis=new RedisOps();
        System.out.println(redis.getArticleTitleById(3));
    }
}
