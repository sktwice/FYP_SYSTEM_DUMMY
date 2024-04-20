/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class student {
    private String studentId;
    private String fId;
    private String sName;
    private int semester;
    private String password;
    private String sCourse;
    private int phoneNum;
    
    public student(String studentId,String fId, String sName, int semester, String password, String sCourse, int phoneNum){
        this.studentId=studentId;
        this.fId=fId;
        this.sName=sName;
        this.semester=semester;
        this.password=password;
        this.sCourse=sCourse;
        this.phoneNum=phoneNum;
    }

    public String getStudentId() {
        return studentId;
    }

    public String getfId() {
        return fId;
    }

    public String getsName() {
        return sName;
    }

    public int getSemester() {
        return semester;
    }

    public String getPassword() {
        return password;
    }

    public String getsCourse() {
        return sCourse;
    }

    public int getPhoneNum() {
        return phoneNum;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public void setfId(String fId) {
        this.fId = fId;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setsCourse(String sCourse) {
        this.sCourse = sCourse;
    }

    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }
    
    
}
