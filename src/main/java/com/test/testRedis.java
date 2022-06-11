package com.test;

import com.redis.RedisOps;

public class testRedis {
    public static void main(String[] args) {
        RedisOps redis=new RedisOps();
        redis.setUserNameAndPassword("zzy","456");
        System.out.println(redis.getUserNameAndPassword("zzy"));
    }
}
