package com.test;

import com.JDBC.VideoDAO;
import com.POJO.VideoBean;
import java.util.List;

import java.io.IOException;

public class TestVideoDAO {
    public static void main(String[] args) throws IOException {
        VideoDAO videoDAO=new VideoDAO();
        List<VideoBean> video = videoDAO.getVideoByTag("ab");
        System.out.println(video);
        for(int i=0;i<video.size();i++){
            System.out.println(video.get(i).getTag());
        }

    }
}
