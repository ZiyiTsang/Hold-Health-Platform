package com.JDBC;


import com.POJO.UserBean;
import com.mapper.UserMapper;
import com.redis.RedisOps;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Random;

public class UserDAO extends BaseDAO {
    private final UserMapper mapper;
    private final SqlSession sqlSession;
    private final RedisOps ro;

    String profile;

    public UserDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(UserMapper.class);
        ro=new RedisOps();

    }
    public void profileGenerator(boolean boy){
        Random r = new Random();
        int num=r.nextInt(4);
        if(boy){
            switch (num) {
                case 0 -> profile = "https://s1.328888.xyz/2022/06/16/0uGfR.jpg";
                case 1 -> profile = "https://s1.328888.xyz/2022/06/16/0uuMS.jpg";
                case 2 -> profile = "https://s1.328888.xyz/2022/06/16/0ug0i.jpg";
                case 3 -> profile = "https://s1.328888.xyz/2022/06/16/0u9Fv.jpg";
            }
        }else{
            switch (num) {
                case 0 -> profile = "https://s1.328888.xyz/2022/06/16/0uLG0.jpg";
                case 1 -> profile = "https://s1.328888.xyz/2022/06/16/0uXtJ.jpg";
                case 2 -> profile = "https://s1.328888.xyz/2022/06/16/0ufOF.jpg";
                case 3 -> profile = "https://s1.328888.xyz/2022/06/16/0uixW.jpg";
            }
        }
    }
    /*
 男生头像
https://s1.328888.xyz/2022/06/16/0uGfR.jpg
https://s1.328888.xyz/2022/06/16/0uuMS.jpg
https://s1.328888.xyz/2022/06/16/0ug0i.jpg
https://s1.328888.xyz/2022/06/16/0u9Fv.jpg

女生头像
https://s1.328888.xyz/2022/06/16/0uLG0.jpg
https://s1.328888.xyz/2022/06/16/0uXtJ.jpg
https://s1.328888.xyz/2022/06/16/0ufOF.jpg
https://s1.328888.xyz/2022/06/16/0uixW.jpg
* */
    public UserBean getUserById(int id){
        return mapper.selectById(id);
    }
    public UserBean getUserByUsername(String username){
        return mapper.selectByUserName(username);
    }
    public Boolean validation(String username,String password){
        String passwordHashOutside=SHA(password);
        String redisPasswd=ro.getUserNameAndPassword(username);
        if(redisPasswd!=null){
            if(redisPasswd.equals(passwordHashOutside)){
                return true;
            }
        }
        UserBean user=getUserByUsername(username);
        if (user!=null){
            String passwdHashInside=user.getPassword();
            if(passwdHashInside.equals(passwordHashOutside)){
                ro.setUserNameAndPassword(username,passwordHashOutside);
                return true;
            }else{
                return false;
            }
        }
        return false;

    }
    public List<UserBean> getAllUser(){
        return mapper.selectAll();
    }
    public int newUser(String username,String password,boolean boy,String email){
        String passwd=SHA(password);
        ro.setUserNameAndPassword(username, password);
        this.profileGenerator(boy);
        if(boy){
            return mapper.addUser(username,passwd,this.profile,email,true);
        }
        else{
            return mapper.addUser(username,passwd,this.profile,email,false);
        }

    }
    public int updateUser(String username,String password,String profile,String email){
        ro.deleteUser(username);
        String passwd=SHA(password);
        return mapper.updatePassword(username,passwd,profile,email);
    }
    private String SHA(final String strText) {
        // 返回值
        String strResult = null;
        // 是否是有效字符串
        if (strText != null && strText.length() > 0) {
            try {
                // SHA 加密开始
                // 创建加密对象 并傳入加密類型
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                // 传入要加密的字符串
                messageDigest.update(strText.getBytes());
                // 得到 byte 類型结果
                byte[] byteBuffer = messageDigest.digest();

                // 將 byte 轉換爲 string
                StringBuilder strHexString = new StringBuilder();
                // 遍歷 byte buffer
                for (byte b : byteBuffer) {
                    String hex = Integer.toHexString(0xff & b);
                    if (hex.length() == 1) {
                        strHexString.append('0');
                    }
                    strHexString.append(hex);
                }
                // 得到返回結果
                strResult = strHexString.toString();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return strResult;
    }
}
