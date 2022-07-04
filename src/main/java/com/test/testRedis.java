package com.test;

import com.redis.RedisOps;
import redis.clients.jedis.Jedis;

public class testRedis {
    public static void main(String[] args) {
        Jedis jedis=new Jedis("101.43.195.210");
        jedis.auth("Zzy18950146872");
        System.out.println(jedis.hget("cart:" +"33", "4"));
    }
}
