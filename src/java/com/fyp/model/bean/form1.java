/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class form1 extends form{
    
    private String termSv;
    private String dateTSv;
    private String termStu;
    private String dateTStu;
    private String agreementSv;
    private String dateASv;
    private String agreementStu;
    private String dateAStu;
    
    public form1(int formId, int studentId, int lId, int proId, String termSv, String dateTSv, String termStu, String dateTStu, String agreementSv, String dateASv, String agreementStu, String dateAStu) {
        super(formId, studentId, lId, proId);
        this.termSv=termSv;
        this.dateTSv=dateTSv;
        this.termStu=termStu;
        this.dateTStu=dateTStu;
        this.agreementSv=agreementSv;
        this.dateASv=dateASv;
        this.agreementStu=agreementStu;
        this.dateAStu=dateAStu;
    }

    public String getTermSv() {
        return termSv;
    }

    public String getDateTSv() {
        return dateTSv;
    }

    public String getTermStu() {
        return termStu;
    }

    public String getDateTStu() {
        return dateTStu;
    }

    public String getAgreementSv() {
        return agreementSv;
    }

    public String getDateASv() {
        return dateASv;
    }

    public String getAgreementStu() {
        return agreementStu;
    }

    public String getDateAStu() {
        return dateAStu;
    }

    public void setTermSv(String termSv) {
        this.termSv = termSv;
    }

    public void setDateTSv(String dateTSv) {
        this.dateTSv = dateTSv;
    }

    public void setTermStu(String termStu) {
        this.termStu = termStu;
    }

    public void setDateTStu(String dateTStu) {
        this.dateTStu = dateTStu;
    }

    public void setAgreementSv(String agreementSv) {
        this.agreementSv = agreementSv;
    }

    public void setDateASv(String dateASv) {
        this.dateASv = dateASv;
    }

    public void setAgreementStu(String agreementStu) {
        this.agreementStu = agreementStu;
    }

    public void setDateAStu(String dateAStu) {
        this.dateAStu = dateAStu;
    }
    
    
    
    
}
