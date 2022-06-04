package com.POJO;

public class ArticleBean {
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

    @Override
    public String toString() {
        return "articleBean{" +
                "id=" + id +
                ", time='" + time + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
