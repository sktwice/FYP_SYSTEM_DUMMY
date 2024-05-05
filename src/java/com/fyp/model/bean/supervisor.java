/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.fyp.model.bean;

/**
 *
 * @author User
 */
public class supervisor extends lecturer {
    
    private String position;
   
    public supervisor(String lId,String fId,String lName, int phoneNum,String password,String sCourse,String position){
        super(lId,fId, lName,  phoneNum,password,sCourse);
        this.position = position;
    }

 
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

   
    
    
}