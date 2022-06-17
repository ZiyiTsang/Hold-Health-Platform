package com.test;

import com.JDBC.CommentDAO;
import com.POJO.CommentBean;
import java.util.List;

import java.io.IOException;

public class testComment {
    public static void main(String[] args) throws IOException {
        CommentDAO cd=new CommentDAO();
        CommentBean cb=new CommentBean(8,23,6,"content");
        cd.addComment(cb);
        //List<CommentBean> comments=cd.getCommentByArticleId(6);
        //cd.addLikes(comments.get(0).getComment_id());
//       System.out.println(cd.getCommentByArticleId(6));
        //System.out.println(comments.get(0).getLike());
    }
}
