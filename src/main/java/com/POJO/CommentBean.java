package com.POJO;

public class CommentBean {
    private int comment_id ;
    private int author_id;
    private int like_;
    private String time;
    private int article_id;

    private String content;

    public CommentBean(int author_id, int like_, int article_id, String content) {
        this.author_id = author_id;
        this.like_ = like_;
        this.article_id = article_id;
        this.content = content;
    }

    public CommentBean() {
    }


    public int getComment_id() {
        return comment_id;
    }



    public int getLike() {
        return like_;
    }

    public String getTime() {
        return time;
    }

    public int getArticle_id() {
        return article_id;
    }

    public String getContent() {
        return content;
    }

    public int getAuthor_id() {
        return author_id;
    }

    public int getLike_() {
        return like_;
    }
}
