/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class form3 extends form {
    
    private int relevance;
    private int knowledge;
    private int writing;
    private int total;
    private String approval;
    private String dateApprove;
    
    public form3(int formId, int studentId, int lId, int proId
                ,int relevance, int knowledge, int writing, int total, String approval, String dateApprove) {
        super(formId, studentId, lId, proId);
        this.relevance=relevance;
        this.knowledge=knowledge;
        this.writing=writing;
        this.total=total;
        this.approval=approval;
        this.dateApprove=dateApprove;
    }

    public int getRelevance() {
        return relevance;
    }

    public int getKnowledge() {
        return knowledge;
    }

    public int getWriting() {
        return writing;
    }

    public int getTotal() {
        return total;
    }

    public String getApproval() {
        return approval;
    }

    public String getDateApprove() {
        return dateApprove;
    }

    public void setRelevance(int relevance) {
        this.relevance = relevance;
    }

    public void setKnowledge(int knowledge) {
        this.knowledge = knowledge;
    }

    public void setWriting(int writing) {
        this.writing = writing;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public void setApproval(String approval) {
        this.approval = approval;
    }

    public void setDateApprove(String dateApprove) {
        this.dateApprove = dateApprove;
    }
    
    
}
