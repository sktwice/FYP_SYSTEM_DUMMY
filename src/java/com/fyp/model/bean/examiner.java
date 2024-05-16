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
    private int totalPro;

    public examiner(int lId, int fId, int loginId, int adminId, String position, String iImage, String lName, int phoneNum, String email, String sCourse,String eName, int totalPro) {
        super(lId, fId, loginId, adminId, position, iImage, lName, phoneNum, email, sCourse);
        this.eName = eName;
        this.totalPro = totalPro;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }

    public int getTotalPro() {
        return totalPro;
    }

    public void setTotalPro(int totalPro) {
        this.totalPro = totalPro;
    }
}