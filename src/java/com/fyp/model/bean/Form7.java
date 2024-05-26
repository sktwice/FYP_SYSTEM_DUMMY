/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class Form7 extends Form {     
    private String presentDate;    
    private int knowledge;         
    private int overallProject;    
    private int presentMaterial;   
    private int delivery;          
    private int total;             
    private String comment;        
    private String name;           
    private String termSv;         
    private String dateTSv;

    public Form7(int formId, int studentId, int lId, int proId, 
             String presentDate, int knowledge, int overallProject,
                 int presentMaterial, int delivery, int total, String comment,
                 String name, String termSv, String dateTSv) {
        super(formId, studentId, lId, proId);
        this.presentDate = presentDate;
        this.knowledge = knowledge;
        this.overallProject = overallProject;
        this.presentMaterial = presentMaterial;
        this.delivery = delivery;
        this.total = total;
        this.comment = comment;
        this.name = name;
        this.termSv = termSv;
        this.dateTSv = dateTSv;
    }

    public String getPresentDate() {
        return presentDate;
    }

    public int getKnowledge() {
        return knowledge;
    }

    public int getOverallProject() {
        return overallProject;
    }

    public int getPresentMaterial() {
        return presentMaterial;
    }

    public int getDelivery() {
        return delivery;
    }

    public int getTotal() {
        return total;
    }

    public String getComment() {
        return comment;
    }

    public String getName() {
        return name;
    }

    public String getTermSv() {
        return termSv;
    }

    public String getDateTSv() {
        return dateTSv;
    }

    public void setPresentDate(String presentDate) {
        this.presentDate = presentDate;
    }

    public void setKnowledge(int knowledge) {
        this.knowledge = knowledge;
    }

    public void setOverallProject(int overallProject) {
        this.overallProject = overallProject;
    }

    public void setPresentMaterial(int presentMaterial) {
        this.presentMaterial = presentMaterial;
    }

    public void setDelivery(int delivery) {
        this.delivery = delivery;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTermSv(String termSv) {
        this.termSv = termSv;
    }

    public void setDateTSv(String dateTSv) {
        this.dateTSv = dateTSv;
    }
    
    
}
