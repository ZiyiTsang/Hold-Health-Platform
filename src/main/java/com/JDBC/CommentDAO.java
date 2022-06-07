package com.JDBC;


import com.POJO.CommentBean;
import com.mapper.CommentMapper;

import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static com.JDBC.BaseDAO.getSqlSession;

public class CommentDAO {
    private final CommentMapper mapper;
    private final SqlSession sqlSession;

    public CommentDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(CommentMapper.class);
    }
    public int addComment(CommentBean cb){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return mapper.addComment(cb.getAuthor(),cb.getContent(),cb.getLike(), sdf.format(date), cb.getArticle_id());
    }
    public List<CommentBean> getCommentByArticleId(int article_id){
        return mapper.getAllCommentByArticleId(article_id);
    }

}
