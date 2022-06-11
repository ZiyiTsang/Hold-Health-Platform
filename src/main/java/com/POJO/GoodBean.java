package com.POJO;

public class GoodBean {
    private int goodId;
    private String goodName;
    private int price;
    private String introduction;
    private String image;

    public int getMonthlySales() {
        return monthlySales;
    }

    private int monthlySales;

    public GoodBean(String goodName, int price, String introduction, String image,int monthlySales) {
        this.goodName = goodName;
        this.price = price;
        this.introduction = introduction;
        this.image = image;
        this.monthlySales=monthlySales;
    }

    public GoodBean() {
    }

    public int getGoodId() {
        return goodId;
    }

    public String getGoodName() {
        return goodName;
    }

    public int getPrice() {
        return price;
    }

    public String getIntroduction() {
        return introduction;
    }

    public String getImage() {
        return image;
    }
}
