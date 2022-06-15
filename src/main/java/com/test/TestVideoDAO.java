package com.test;

import com.JDBC.VideoDAO;
import com.POJO.VideoBean;
import java.util.List;

import java.io.IOException;

public class TestVideoDAO {
    public static void main(String[] args) throws IOException {
        VideoDAO videoDAO=new VideoDAO();
        VideoBean videoBean=new VideoBean("title2", "link", "author", "tag", "abstract_","img_author", "abs_img");
        System.out.println(videoDAO.getVideoByAuthor("title"));
        System.out.println(videoBean.getAuthorIMG());
        System.out.println(videoBean.getAbsIMG());

    }
}
