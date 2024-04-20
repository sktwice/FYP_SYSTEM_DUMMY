/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class admin {
    private String adminId;
    private String aName;
    private String password;
    
    public admin(String adminId, String aName, String password){
        this.adminId=adminId;
        this.aName=aName;
        this.password=password;
    }

    /**
     * @return the adminId
     */
    public String getAdminId() {
        return adminId;
    }

    /**
     * @return the aName
     */
    public String getaName() {
        return aName;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param adminId the adminId to set
     */
    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    /**
     * @param aName the aName to set
     */
    public void setaName(String aName) {
        this.aName = aName;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
