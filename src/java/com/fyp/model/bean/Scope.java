package com.fyp.model.bean;

public class Scope {
    private int scopeId;
    private int adminId;
    private int lId; 
    private String scopeName;
    private String program;
    private String session;

  
    public Scope(int scopeId, int adminId, int lId, String scopeName, String program, String session) {
        this.scopeId = scopeId;
        this.adminId = adminId;
        this.lId = lId;
        this.scopeName = scopeName;
        this.program = program;
        this.session = session;
    }


    public int getScopeId() {
        return scopeId;
    }

    public void setScopeId(int scopeId) {
        this.scopeId = scopeId;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public int getLId() {
        return lId;
    }

    public void setLId(int lId) {
        this.lId = lId;
    }

    public String getScopeName() {
        return scopeName;
    }

    public void setScopeName(String scopeName) {
        this.scopeName = scopeName;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }
}
