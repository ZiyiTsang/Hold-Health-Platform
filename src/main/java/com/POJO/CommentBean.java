package com.POJO;

public class CommentBean {
    private int comment_id ;
    private String author;
    private int like_;
    private String time;
    private int article_id;

    private String content;

    public CommentBean(String author, int like_, int article_id, String content) {
        this.author = author;
        this.like_ = like_;
        this.article_id = article_id;
        this.content = content;
    }

    public CommentBean() {
    }


    public int getComment_id() {
        return comment_id;
    }

    public String getAuthor() {
        return author;
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
}
