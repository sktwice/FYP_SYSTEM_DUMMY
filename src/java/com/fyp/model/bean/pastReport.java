package com.fyp.model.bean;

public class pastReport {
    private int proId;
    private int studentId;
    private int lId;
    private String proTitle;
    private String session;

    public pastReport(int proId, int studentId, int lId, String proTitle, String session) {
        this.proId = proId;
        this.studentId = studentId;
        this.lId = lId;
        this.proTitle = proTitle;
        this.session = session;

    }

    public int getProId() {
        return proId;
    }

    public int getStudentId() {
        return studentId;
    }

    public int getLId() {
        return lId;
    }

    public String getProTitle() {
        return proTitle;
    }

    public String getSession() {
        return session;
    }

}