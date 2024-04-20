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
    private String lName;
    private int phoneNum;
    private String password;
    private String sCourse;
    
    public lecturer(String lId,String fId,String lName, int phoneNum,String password,String sCourse){
        this.lId=lId;
        this.fId=fId;
        this.lName=lName;
        this.phoneNum=phoneNum;
        this.password=password;
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

    public String getPassword() {
        return password;
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

    public void setPassword(String password) {
        this.password = password;
    }

    public void setsCourse(String sCourse) {
        this.sCourse = sCourse;
    }
    
    
}
