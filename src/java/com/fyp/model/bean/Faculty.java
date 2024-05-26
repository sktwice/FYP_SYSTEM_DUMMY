/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class faculty {
    private int fId;
    private String fName;
    private String fCourse;
    
    public faculty(int fId, String fName, String fCourse){
        this.fId=fId;
        this.fName=fName;
        this.fCourse=fCourse;
    }

    public int getfId() {
        return fId;
    }

    public String getfName() {
        return fName;
    }

    public String getfCourse() {
        return fCourse;
    }

    public void setfId(int fId) {
        this.fId = fId;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public void setfCourse(String fCourse) {
        this.fCourse = fCourse;
    }
    
    
}
