package com.POJO;

public class ArticleBean {
    public ArticleBean() {
    }

    public ArticleBean(String title, String content, String tag, String abstract_, String author) {
        this.title = title;
        this.content = content;
        this.tag = tag;
        this.abstract_ = abstract_;
        this.author = author;
    }


    public String getTitle() {
        return title;
    }
    public String getContent() {
        return content;
    }
    public Integer getId() {
        return id;
    }
    public String getTime() {
        return time;
    }

    private Integer id;
    private String time;
    private String title;
    private String content;

    private int view;

    private String tag;
    private String abstract_;
    private String author;
    private int comment_cnt;
    public String getIntro() {
        if (this.content==null){
            return "ERR:content is empty";
        }
        return this.content.substring(0,20);
    }
    public String getTag() {
        return tag;
    }

    public String getAuthor() {
        return author;
    }

    public String getAbstract() {
        return abstract_;
    }

    public int getView() {
        return view;
    }

    public String getAbstract_() {
        return abstract_;
    }

    public int getComment_cnt() {
        return comment_cnt;
    }
}
