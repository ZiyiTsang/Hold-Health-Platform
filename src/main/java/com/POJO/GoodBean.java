package com.POJO;

public class GoodBean {
    private int goodId;
    private String goodName;
    private int price;
    private String introduction;
    private String image;

    private String color;
    private String material;
    private String Brand;
    private String Manufacturer;
    private String productDimensions;

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
        this.color = color;
        this.Brand = Brand;
        this.material = material;
        this.Manufacturer = Manufacturer;
        this.productDimensions = productDimensions;
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

    public String getColor() {
        return color;
    }

    public String getBrand() {
        return Brand;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getMaterial() {
        return material;
    }

    public String getManufacturer() {
        return Manufacturer;
    }

    public String getProductDimensions() {
        return productDimensions;
    }
}
