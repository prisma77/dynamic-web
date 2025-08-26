package com.prisma77.model.vo;

public class MemberVO {
    private  String name;
    private String email;
    private  String password;
    private  String remember;

    public MemberVO() {
    }

    public MemberVO(String name, String email, String password, String remember) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.remember = remember;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", remember='" + remember + '\'' +
                '}';
    }
}