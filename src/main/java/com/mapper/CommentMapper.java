package com.mapper;

import com.POJO.CommentBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {
    int addComment(@Param("author_id") int author_id, @Param("content") String content,@Param("like_") int like_,@Param("time") String time,@Param("article_id") int article_id);
    List<CommentBean> getAllCommentByArticleId(int article_id);

    void addLikes(int id);
}
