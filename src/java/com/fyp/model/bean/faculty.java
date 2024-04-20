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
    private String fId;
    private String sName;
    private String sCourse;
    
    public faculty(String fId, String sName, String sCourse){
        this.fId=fId;
        this.sName=sName;
        this.sCourse=sCourse;
    }

    public String getfId() {
        return fId;
    }

    public String getsName() {
        return sName;
    }

    public String getsCourse() {
        return sCourse;
    }

    public void setfId(String fId) {
        this.fId = fId;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public void setsCourse(String sCourse) {
        this.sCourse = sCourse;
    }
    
    
}
