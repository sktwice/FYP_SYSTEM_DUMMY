/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class examiner {
    private String lId;
    private String eName;
    private String position;
    private String password;
    
    public examiner(String lId, String eName, String position, String password){
        this.lId=lId;
        this.eName=eName;
        this.position=position;
        this.password=password;
    }

    /**
     * @return the lId
     */
    public String getlId() {
        return lId;
    }

    /**
     * @return the eName
     */
    public String geteName() {
        return eName;
    }

    /**
     * @return the position
     */
    public String getPosition() {
        return position;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param lId the lId to set
     */
    public void setlId(String lId) {
        this.lId = lId;
    }

    /**
     * @param eName the eName to set
     */
    public void seteName(String eName) {
        this.eName = eName;
    }

    /**
     * @param position the position to set
     */
    public void setPosition(String position) {
        this.position = position;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
