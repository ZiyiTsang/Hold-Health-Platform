package com.JDBC;

import com.POJO.VideoBean;
import com.mapper.UserMapper;
import com.mapper.VideoMapper;
import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.util.List;

public class VideoDAO extends BaseDAO{
    private final VideoMapper mapper;
    private final SqlSession sqlSession;

    public VideoDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(VideoMapper.class);
    }
    public boolean addVideo(VideoBean videoBean){
        try{
            mapper.addVideo(videoBean.getTitle(), videoBean.getLink(), videoBean.getAuthor(), videoBean.getTag(), videoBean.getAbstract_(), videoBean.getAuthorIMG(), videoBean.getAbsIMG());
        }catch (Exception exception){
            System.out.printf("addVideo err:%s",exception);
            return false;
        }
        return true;
    }
    public List<VideoBean> getAllVideo(){
        try{
            return mapper.selectAll();
        }catch(Exception e) {
            System.out.println("getAllVideo err:e");
            return null;
        }
    }
    public List<VideoBean> getVideoByTag(String tag){
        try{
            return mapper.selectByTag("%"+tag+"%");
        }catch(Exception e) {
            System.out.println("getVideoByTag err:e");
            return null;
        }
    }
    public List<VideoBean> getVideoByTitle(String title){
        try{
            return mapper.selectByTitle("%"+title+"%");
        }catch(Exception e) {
            System.out.println("getVideoByTitle err:e");
            return null;
        }
    }
    public List<VideoBean> getVideoByAuthor(String author){
        try{
            return mapper.selectByAuthor("%"+author+"%");
        }catch(Exception e) {
            System.out.println("getVideoByAuthor err:e");
            return null;
        }
    }

}
