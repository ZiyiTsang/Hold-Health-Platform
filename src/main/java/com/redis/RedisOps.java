package com.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class RedisOps {
    public RedisOps() {
        String address = "101.43.195.210";
        String passwd = "Zzy18950146872";
        System.out.println("Redis:Staring");
        JedisPool pool = new JedisPool(address, 6379);
        Jedis jedis=pool.getResource();
        jedis.auth(passwd);
//        System.out.println(jedis.ping());
        System.out.printf("Redis:%s\n",jedis.ping());

        jedis.close();
        this.pool=pool;
    }
    public void setArticleIdAndTitle(String id, String title){
        Jedis jedis=pool.getResource();
        jedis.hset("article",id,title);
        jedis.close();
    }
    public String getArticleTitleById(int id){
        Jedis jedis=pool.getResource();
        String t=jedis.hget("article", String.valueOf(id));
        jedis.close();
        return t;
    }
    public void flushAll(){
        Jedis jedis=pool.getResource();
        jedis.flushAll();
        jedis.close();
    }


    private final JedisPool pool;


}
