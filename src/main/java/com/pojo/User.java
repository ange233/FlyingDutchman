package com.pojo;

/**
 * Created by dell on 2018/7/25.
 */
public class User {
    private String userId;
    private String password;
    private String name;
    private double cumulativeAmount;
    private String phoneNumber;
    private String sex;
    private String birthday;
    private double restAmount;

    public User(){
        userId = "";
        password = "";
        name = "";
        cumulativeAmount = 0;
        phoneNumber = "";
        sex = null;
        birthday = "";
        restAmount = 0;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getCumulativeAmount() {
        return cumulativeAmount;
    }

    public void setCumulativeAmount(double cumulativeAmount) {
        this.cumulativeAmount = cumulativeAmount;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public double getRestAmount() {
        return restAmount;
    }

    public void setRestAmount(double restAmount) {
        this.restAmount = restAmount;
    }
}
