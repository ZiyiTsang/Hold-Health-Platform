package com.POJO;

public class UserBean {
    private Integer id;
    private String username;
    private String password;
    private String profile;
    private String email;

    private Boolean gender;

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getProfile() {
        return profile;
    }

    public String getGender() {
        if(this.gender){
            return "male";
        }
        return "female";
    }
}
