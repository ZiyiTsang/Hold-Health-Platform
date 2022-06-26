package com.JDBC;

import com.redis.RedisOps;


public class CartDAO {
    private static final RedisOps ro= new RedisOps();
    public int addCart(String userid, String goodId, String GoodNum){
        return ro.addCart(String.valueOf(userid),goodId,GoodNum);
    }
    public void deleteItem(String userid, String goodId){
        ro.deleteOneItem(userid,goodId);
    }

}
