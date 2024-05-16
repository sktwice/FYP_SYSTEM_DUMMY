/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class form2 extends form {
    
    private int proIdentity;
    private int evidence;
    private int solution;
    private int total;
    private String approval;
    private String dateApprove;

    public form2(int formId, int studentId, int lId, int proId, int proIdentity, int evidence, int solution, int total, String approval, String dateApprove) {
        super(formId, studentId, lId, proId);
        this.proIdentity=proIdentity;
        this.evidence=evidence;
        this.solution=solution;
        this.total=total;
        this.approval=approval;
        this.dateApprove=dateApprove;
    }

    public int getProIdentity() {
        return proIdentity;
    }

    public int getEvidence() {
        return evidence;
    }

    public int getSolution() {
        return solution;
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

    public void setProIdentity(int proIdentity) {
        this.proIdentity = proIdentity;
    }

    public void setEvidence(int evidence) {
        this.evidence = evidence;
    }

    public void setSolution(int solution) {
        this.solution = solution;
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
