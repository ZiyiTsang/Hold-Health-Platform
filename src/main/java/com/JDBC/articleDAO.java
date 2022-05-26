package com.JDBC;

public class articleDAO {

}

class article{
    public String getTitle() {
        return title;
    }
    public String getContent() {
        return content;
    }
    public String getID() {
        return ID;
    }
    public void setID(String ID) {
        this.ID = ID;
    }
    public void setPublish_time(String publish_time) {
        this.publish_time = publish_time;
    }
    public String getPublish_time() {
        return publish_time;
    }

    private String ID;
    private String publish_time;
    public String title;
    public String content;

}
