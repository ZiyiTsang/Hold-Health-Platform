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
    public void setId(String id) {
        this.id = Integer.valueOf(id);
    }
    public void setTime(String time) {
        this.time = time;
    }
    public String getTime() {
        return time;
    }

    public Integer id;
    public String time;
    public String title;
    public String content;

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
