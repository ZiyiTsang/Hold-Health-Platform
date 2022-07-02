package com.JDBC;

import com.redis.RedisOps;

import java.util.Map;


public class CartDAO {
    private static final RedisOps ro= new RedisOps();
    public int addCart(String userid, String goodId, String GoodNum){
        return ro.addCart(userid,goodId,GoodNum);
    }
    public void deleteItem(String userid, String goodId){
        ro.deleteOneItem(userid,goodId);
    }
    public Map<String, String> getAll(String userid){
        return ro.getAllItem(userid);
    }

}
