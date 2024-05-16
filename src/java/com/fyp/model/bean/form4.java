/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class form4 extends form {
    
    private int design;
    private int description;
    private int model;
    private int total;
    private String approval;
    private String dateApprove;
    
    public form4(int formId, int studentId, int lId, int proId, 
            int design, int description, int model, int total, String approval, String dateApprove) {
        super(formId, studentId, lId, proId);
        this.design=design;
        this.description=description;
        this.model=model;
        this.total=total;
        this.approval=approval;
        this.dateApprove=dateApprove;
    }

    public int getDesign() {
        return design;
    }

    public int getDescription() {
        return description;
    }

    public int getModel() {
        return model;
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

    public void setDesign(int design) {
        this.design = design;
    }

    public void setDescription(int description) {
        this.description = description;
    }

    public void setModel(int model) {
        this.model = model;
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
