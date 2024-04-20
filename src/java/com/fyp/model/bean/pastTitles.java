/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class pastTitles {
    private int proId;
    private String studentId;
    private String staffId;
    private String proTitle;
    private String session;
    
    public pastTitles(int proId,String studentId, String staffId, String proTitle,String session){
        this.proId=proId;
        this.studentId=studentId;
        this.staffId=staffId;
        this.proTitle=proTitle;
        this.session=session;
    }

    public int getProId() {
        return proId;
    }

    public String getStudentId() {
        return studentId;
    }

    public String getStaffId() {
        return staffId;
    }

    public String getProTitle() {
        return proTitle;
    }

    public String getSession() {
        return session;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public void setSession(String session) {
        this.session = session;
    }
    
    
}
