package com.JDBC;


import com.POJO.CommentBean;
import com.mapper.CommentMapper;

import org.apache.ibatis.session.SqlSession;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static com.JDBC.BaseDAO.getSqlSession;

public class CommentDAO extends BaseDAO{
    private final CommentMapper mapper;
    private final SqlSession sqlSession;

    public CommentDAO() throws IOException {
        sqlSession=getSqlSession();
        mapper= sqlSession.getMapper(CommentMapper.class);
    }
    public boolean addComment(CommentBean cb) throws IOException {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        UserDAO ud=new UserDAO();
        ArticleDAO ad=new ArticleDAO();
        if(ud.getUserById(cb.getAuthor_id())==null){
            System.out.println("ERR:user not exist");
            return false;
        }
        if(ad.getArticleById(cb.getArticle_id())==null){
            System.out.println("ERR:article not exist");
            return false;
        }
        mapper.addComment(cb.getAuthor_id(),cb.getContent(),cb.getLike(), sdf.format(date), cb.getArticle_id());
        return true;
    }
    public List<CommentBean> getCommentByArticleId(int article_id){
        return mapper.getAllCommentByArticleId(article_id);
    }

    public void addLikes(int id) {
        mapper.addLikes(id);
    }

}
