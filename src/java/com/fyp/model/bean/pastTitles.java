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
    private String lId;
    private String proTitle;
    private String session;
    
    public pastTitles(int proId,String studentId, String lId, String proTitle,String session){
        this.proId=proId;
        this.studentId=studentId;
        this.lId=lId;
        this.proTitle=proTitle;
        this.session=session;
    }

    public int getProId() {
        return proId;
    }

    public String getStudentId() {
        return studentId;
    }

    public String getLId() {
        return lId;
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

    public void setLId(String lId) {
        this.lId = lId;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public void setSession(String session) {
        this.session = session;
    }
    
    
}
