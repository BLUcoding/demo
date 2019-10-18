package com.pojo;

public class Person {
    private int user_id;
    private  String user_name;
    private  String user_telephone;
    private String user_information;

    public Person(String user_name, String user_telephone, String user_information) {
        this.user_name = user_name;
        this.user_telephone = user_telephone;
        this.user_information = user_information;
    }

    public Person(){

    }

    public Person(int user_id, String user_name, String user_telephone, String user_information) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_telephone = user_telephone;
        this.user_information = user_information;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", user_telephone='" + user_telephone + '\'' +
                ", user_information='" + user_information + '\'' +
                '}';
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_telephone() {
        return user_telephone;
    }

    public void setUser_telephone(String user_telephone) {
        this.user_telephone = user_telephone;
    }

    public String getUser_information() {
        return user_information;
    }

    public void setUser_information(String user_information) {
        this.user_information = user_information;
    }
}
