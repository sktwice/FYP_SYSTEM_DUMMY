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
    private String loginId;
    private String adminId;
    private String sName;
    private int semester;
    private String password;
    private String sImage;
    private int phoneNum;
    
    public student(String studentId,String fId,String loginId, String adminId, String sName, int semester, String password, String sImage, int phoneNum){
        this.studentId=studentId;
        this.fId=fId;
        this.loginId=loginId;
        this.adminId=adminId;
        this.sName=sName;
        this.semester=semester;
        this.password=password;
        this.sImage=sImage;
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

    public String getsImage() {
        return sImage;
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

    public void setsImage(String sImage) {
        this.sImage = sImage;
    }

    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getLoginId() {
        return loginId;
    }

    public String getAdminId() {
        return adminId;
    }
    
    
}
