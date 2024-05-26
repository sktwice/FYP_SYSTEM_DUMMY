/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class Form6 extends Form {
    
    private String sumbitDate;
    private String stuApproval;
    private int similarityIndex;
    private String svApproval;
    private String svDate;
    private String dateApprove; 
    
    
    public Form6(int formId, int studentId, int lId, int proId, 
            String submitDate, String stuApproval, int similarityIndex, String svApproval, String svDate, String dateApproval) {
        super(formId, studentId, lId, proId);
    }

    public String getSumbitDate() {
        return sumbitDate;
    }

    public String getStuApproval() {
        return stuApproval;
    }

    public int getSimilarityIndex() {
        return similarityIndex;
    }

    public String getSvApproval() {
        return svApproval;
    }

    public String getSvDate() {
        return svDate;
    }

    public String getDateApprove() {
        return dateApprove;
    }

    public void setSumbitDate(String sumbitDate) {
        this.sumbitDate = sumbitDate;
    }

    public void setStuApproval(String stuApproval) {
        this.stuApproval = stuApproval;
    }

    public void setSimilarityIndex(int similarityIndex) {
        this.similarityIndex = similarityIndex;
    }

    public void setSvApproval(String svApproval) {
        this.svApproval = svApproval;
    }

    public void setSvDate(String svDate) {
        this.svDate = svDate;
    }

    public void setDateApprove(String dateApprove) {
        this.dateApprove = dateApprove;
    }
    
}
