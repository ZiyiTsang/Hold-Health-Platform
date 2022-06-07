package com.test;

import com.JDBC.CommentDAO;
import com.POJO.CommentBean;

import java.io.IOException;

public class testComment {
    public static void main(String[] args) throws IOException {
        CommentDAO cd=new CommentDAO();
        CommentBean cb=new CommentBean("author",666,6,"content");
        cd.addComment(cb);
//        System.out.println(cd.getCommentByArticleId(6));
    }
}
