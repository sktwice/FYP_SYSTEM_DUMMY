/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class supervisor {
    private String lId;
    private String Iname;
    private String position;
    private String password;
    
    public supervisor(String lId, String Iname, String position,String password){
        this.lId=lId;
        this.Iname=Iname;
        this.position=position;
        this.password=password;
    }

    public String getlId() {
        return lId;
    }

    public String getIname() {
        return Iname;
    }

    public String getPosition() {
        return position;
    }

    public String getPassword() {
        return password;
    }

    public void setlId(String lId) {
        this.lId = lId;
    }

    public void setIname(String Iname) {
        this.Iname = Iname;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
