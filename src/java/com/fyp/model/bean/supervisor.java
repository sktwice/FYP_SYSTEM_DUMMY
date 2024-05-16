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
    private int totalStud;

    public supervisor(int lId, int fId, int loginId, int adminId, String position, String iImage, String lName, int phoneNum, String email, String sCourse,
                      String sName, int totalStud) {
        super(lId, fId, loginId, adminId,position, iImage, lName, phoneNum, email, sCourse);
        this.sName = sName;
        this.totalStud = totalStud;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public int getTotalStud() {
        return totalStud;
    }

    public void setTotalStud(int totalStud) {
        this.totalStud = totalStud;
    }
}