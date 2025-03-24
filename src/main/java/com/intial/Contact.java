package com.intial;

public class Contact {
    private int id;
    private String name;
    private String email;
    private String phno;
    private String about;
    private int userid;

    public Contact(String name, String email, String phno, String about,int userid) {
        this.name = name;
        this.email = email;
        this.phno = phno;
        this.about = about;
       this.userid = userid;
    }

    public Contact(int id, String name, String email, String phno, String about) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phno = phno;
        this.about = about;
    }

    public Contact() {
        super();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public int getUserid() {
        return userid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserid(int userid) {
        this.userid = userid;

    }
}
