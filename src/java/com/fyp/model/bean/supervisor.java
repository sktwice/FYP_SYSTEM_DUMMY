/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class supervisor extends lecturer {
    private String sName;
    private String position;
    private int totalStud;

    public supervisor(String lId, String fId, String loginId, String adminId, String iImage, String lName, int phoneNum, String email, String sCourse,
                      String sName, String position, int totalStud) {
        super(lId, fId, loginId, adminId, iImage, lName, phoneNum, email, sCourse);
        this.sName = sName;
        this.position = position;
        this.totalStud = totalStud;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getTotalStud() {
        return totalStud;
    }

    public void setTotalStud(int totalStud) {
        this.totalStud = totalStud;
    }
}