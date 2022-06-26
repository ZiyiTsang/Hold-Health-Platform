package com.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

public class RedisOps {
    public RedisOps() {
        String address = "101.43.195.210";
        String passwd = "Zzy18950146872";
//        System.out.println("Redis:Staring");
        JedisPool pool = new JedisPool(address, 6379);
        Jedis jedis=pool.getResource();
        jedis.auth(passwd);

//        System.out.printf("Redis:%s\n",jedis.ping());

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
    public void setUserNameAndPassword(String username, String password){
        Jedis jedis=pool.getResource();
        jedis.hset("user",username,password);
        jedis.close();

    }
    public String getUserNameAndPassword(String username){
        Jedis jedis=pool.getResource();
        String t=jedis.hget("user", username);
        jedis.close();
        return t;
    }
    public void deleteUser(String username){
        Jedis jedis=pool.getResource();
        jedis.hdel("user", username);
        jedis.close();
    }
    public void flushAll(){
        Jedis jedis=pool.getResource();
        jedis.flushAll();
        jedis.close();
    }
    public int addCart(String userID,String GoodID,String GoodNumber){
        Jedis jedis=pool.getResource();
        int res=Math.toIntExact(jedis.hset("cart:" + userID, GoodID, GoodNumber));
        jedis.close();
        return res;
    }
    public void deleteOneItem(String userID,String GoodID){
        Jedis jedis=pool.getResource();
        jedis.hdel("cart:" + userID, GoodID);
        jedis.close();
    }
    public void deleteHash(String key){
        Jedis jedis=pool.getResource();
        jedis.del(key);
        jedis.close();
    }


    private final JedisPool pool;


}
