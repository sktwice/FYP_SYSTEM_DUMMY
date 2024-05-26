/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class Form {
    
    private int formId;
    private int studentId;
    private int lId;
    private int proId;
    
    public Form(int formId, int studentId, int lId, int proId){
        this.formId=formId;
        this.studentId=studentId;
        this.lId=lId;
        this.proId=proId;
    }

    public int getFormId() {
        return formId;
    }

    public int getStudentId() {
        return studentId;
    }

    public int getlId() {
        return lId;
    }

    public int getProId() {
        return proId;
    }

    public void setFormId(int formId) {
        this.formId = formId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public void setlId(int lId) {
        this.lId = lId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }
    
    
}
