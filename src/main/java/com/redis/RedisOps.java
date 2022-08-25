package com.redis;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.Map;

public class RedisOps {
    private final String passwd;
    public RedisOps() {
        String address = "666.666.666.666";
        passwd = "6666666666";
//        System.out.println("Redis:Staring");
        JedisPool pool = new JedisPool(address, 6379);
        Jedis jedis = pool.getResource();
        jedis.auth(passwd);

//        System.out.printf("Redis:%s\n",jedis.ping());

        jedis.close();
        this.pool = pool;
    }
    public void setArticleIdAndTitle(String id, String title){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.hset("article",id,title);
        jedis.close();
    }
    public String getArticleTitleById(int id){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        String t=jedis.hget("article", String.valueOf(id));
        jedis.close();
        return t;
    }
    public void setUserNameAndPassword(String username, String password){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.hset("user",username,password);
        jedis.close();

    }
    public String getUserNameAndPassword(String username){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        String t=jedis.hget("user", username);
        jedis.close();
        return t;
    }
    public void deleteUser(String username){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.hdel("user", username);
        jedis.close();
    }
    public void flushAll(){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.flushAll();
        jedis.close();
    }
    public void addCart(String userID,String GoodID,String GoodNumber){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        String tmp=jedis.hget("cart:" +userID, GoodID);
        int origin;
        if(tmp!=null){
            origin= Integer.parseInt(tmp);
        }
        else {
            origin=0;
        }
//        System.out.println(GoodNumber);
//        System.out.println(origin);
        Math.toIntExact(jedis.hset("cart:" +userID, GoodID, String.valueOf(Integer.parseInt(GoodNumber) +origin)));
        jedis.close();
    }
    public void deleteOneItem(String userID,String GoodID){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.hdel("cart:" + userID, GoodID);
        jedis.close();
    }
    public void deleteAllUserItem(String userID){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.del("cart:" + userID);
        jedis.close();
    }

    public Map<String, String> getAllItem(String userID){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.auth("xxxxxxxxxx");
        Map<String, String> result = jedis.hgetAll("cart:" + userID);
        jedis.close();
        return result;
    }
    public void deleteHash(String key){
        Jedis jedis=pool.getResource();
        jedis.auth(this.passwd);
        jedis.del(key);
        jedis.close();
    }
    private final JedisPool pool;


}
