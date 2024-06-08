
package com.fyp.model.bean;


public class Faculty {
    private int fId;
    private String fName;
    private String fCourse;
    
    public Faculty(int fId, String fName, String fCourse){
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
