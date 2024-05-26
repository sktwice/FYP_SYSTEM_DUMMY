/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class Lecturer {
    private int lId;
    private int fId;
    private int loginId;
    private int adminId;
    private String position;
    private String iImage;
    private String lName;
    private int phoneNum;
    private String email;
    private String sCourse;
    
    public Lecturer(int lId,int fId,int loginId,int adminId,String position, String iImage,String lName, int phoneNum,String email,String sCourse){
        this.lId=lId;
        this.fId=fId;
        this.loginId=loginId;
        this.adminId=adminId;
        this.position=position;
        this.iImage=iImage;
        this.lName=lName;
        this.phoneNum=phoneNum;
        this.email=email;
        this.sCourse=sCourse;
    }
    
    

    public int getlId() {
        return lId;
    }

    public int getfId() {
        return fId;
    }

    public String getlName() {
        return lName;
    }

    public int getPhoneNum() {
        return phoneNum;
    }


    public String getsCourse() {
        return sCourse;
    }

    public void setlId(int lId) {
        this.lId = lId;
    }

    public void setfId(int fId) {
        this.fId = fId;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }

    public void setsCourse(String sCourse) {
        this.sCourse = sCourse;
    }

    public int getLoginId() {
        return loginId;
    }

    public int getAdminId() {
        return adminId;
    }

    public String getiImage() {
        return iImage;
    }

    public String getEmail() {
        return email;
    }

    public void setLoginId(int loginId) {
        this.loginId = loginId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public void setiImage(String iImage) {
        this.iImage = iImage;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
    
    
}
