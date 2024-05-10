/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class lecturer {
    private String lId;
    private String fId;
    private String loginId;
    private String adminId;
    private String iImage;
    private String lName;
    private int phoneNum;
    private String email;
    private String sCourse;
    
    public lecturer(String lId,String fId,String loginId,String adminId,String iImage,String lName, int phoneNum,String email,String sCourse){
        this.lId=lId;
        this.fId=fId;
        this.loginId=loginId;
        this.adminId=adminId;
        this.iImage=iImage;
        this.lName=lName;
        this.phoneNum=phoneNum;
        this.email=email;
        this.sCourse=sCourse;
    }
    
    

    public String getlId() {
        return lId;
    }

    public String getfId() {
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

    public void setlId(String lId) {
        this.lId = lId;
    }

    public void setfId(String fId) {
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

    public String getLoginId() {
        return loginId;
    }

    public String getAdminId() {
        return adminId;
    }

    public String getiImage() {
        return iImage;
    }

    public String getEmail() {
        return email;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public void setiImage(String iImage) {
        this.iImage = iImage;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
