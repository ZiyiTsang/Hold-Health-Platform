package com.test;

import com.redis.RedisOps;
import redis.clients.jedis.Jedis;

public class testRedis {
    public static void main(String[] args) {
        RedisOps redis=new RedisOps();
        System.out.println(redis.getAllItem("24"));
    }
}
