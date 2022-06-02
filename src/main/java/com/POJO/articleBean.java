package com.POJO;

public class articleBean {
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

    private Integer id;
    private String time;
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
