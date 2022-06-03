package com.JDBC;


import com.POJO.UserBean;
import com.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

public class UserDAO extends baseDAO{
    private final UserMapper mapper;
    private final SqlSession sqlSession;

    public UserDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(UserMapper.class);
    }
    public UserBean getUserById(int id){
        return mapper.selectById(id);
    }
    public UserBean getUserByUsername(String username){
        return mapper.selectByUserName(username);
    }
    public List<UserBean> getAllUser(){
        return mapper.selectAll();
    }
    public int newUser(String username,String password){
        return mapper.addUser(username,password);
    }
    public int updateUser(String username,String password){
        return mapper.updatePassword(username,password);
    }
    private String SHA(final String strText, final String strType) {
        // 返回值
        String strResult = null;

        // 是否是有效字符串
        if (strText != null && strText.length() > 0) {
            try {
                // SHA 加密开始
                // 创建加密对象 并傳入加密類型
                MessageDigest messageDigest = MessageDigest.getInstance(strType);
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
