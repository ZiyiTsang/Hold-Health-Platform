package com.test;

import com.JDBC.VideoDAO;
import com.POJO.VideoBean;

import java.io.IOException;

public class TestVideoDAO {
    public static void main(String[] args) throws IOException {
        VideoDAO videoDAO=new VideoDAO();
        VideoBean videoBean=new VideoBean("title2", "link", "author", "tag", "abstract_");
        System.out.println(videoDAO.getVideoByAuthor("title"));
    }
}
