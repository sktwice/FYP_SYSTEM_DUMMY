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
    private int studentId;
    private int lId;
    private String proTitle;
    private String areaOfInterest;
    private String proUrl;
    private String session;
    
    public project(int proId,int studentId, int lId, String proTitle,String areaOfInterest,String proUrl, String session ){
        this.proId=proId;
        this.studentId=studentId;
        this.lId=lId;
        this.areaOfInterest=areaOfInterest;
        this.proUrl=proUrl;
        this.proTitle=proTitle;
        this.session=session;
    }
    
    

    public int getProId() {
        return proId;
    }

    public int getStudentId() {
        return studentId;
    }

    public int getlId() {
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

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public void setlId(int lId) {
        this.lId = lId;
    }

    public void setProTitle(String proTitle) {
        this.proTitle = proTitle;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public String getAreaOfInterest() {
        return areaOfInterest;
    }

    public String getProUrl() {
        return proUrl;
    }
    
    
}
