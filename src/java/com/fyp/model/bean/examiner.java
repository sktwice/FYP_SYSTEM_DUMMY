/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class examiner extends lecturer {
    private String eName;
    private String position;
    private int totalPro;

    public examiner(String lId, String fId, String loginId, String adminId, String iImage, String lName, int phoneNum, String email, String sCourse,
                    String eName, String position, int totalPro) {
        super(lId, fId, loginId, adminId, iImage, lName, phoneNum, email, sCourse);
        this.eName = eName;
        this.position = position;
        this.totalPro = totalPro;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public int getTotalPro() {
        return totalPro;
    }

    public void setTotalPro(int totalPro) {
        this.totalPro = totalPro;
    }
}