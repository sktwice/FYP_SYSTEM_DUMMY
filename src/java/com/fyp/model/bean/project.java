/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class project {
    private int proId;
    private String studentId;
    private String lId;
    private String proTitle;
    private String date;
    
    public project(int proId,String studentId, String lId, String proTitle, String date ){
        this.proId=proId;
        this.studentId=studentId;
        this.lId=lId;
        this.proTitle=proTitle;
        this.date=date;
    }

    public int getProId() {
        return proId;
    }

    public String getStudentId() {
        return studentId;
    }

    public String getlId() {
        return lId;
    }

    public String getProTitle() {
        return proTitle;
    }

    public String getDate() {
        return date;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public void setlId(String lId) {
        this.lId = lId;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    
}
