package com.dao;

import com.intial.Contact;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Contactdao {
    private static Connection conn;

    public Contactdao(Connection conn) {
        this.conn = conn;
    }
    public static boolean addContact(Contact user) {
        boolean f = false;
        try {
            String str = "INSERT INTO contact(name,email,phno,about,userid)" +
                    "VALUES('" + user.getName() + "','" + user.getEmail() + "' ,'"+ user.getPhno()+"','"+ user.getAbout()+"','"+ user.getUserid()+"')";
            Statement st = conn.createStatement();
            int i = st.executeUpdate(str);
            if (i > 0) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;


    }
    public static List<Contact> userE(int uid){
        Contact c = null;
        List<Contact> cs = new ArrayList<Contact>();

        try{
            String query = "SELECT * FROM command.contact where userid="+uid;
            Statement pr = conn.createStatement();
            ResultSet rt = pr.executeQuery(query);
            while(rt.next()){
                c = new Contact();
                c.setId(rt.getInt(1));
                c.setName(rt.getString(2));
                c.setEmail(rt.getString(3));
                c.setPhno(rt.getString(4));
                c.setAbout(rt.getString(5));
                cs.add(c);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return cs;
    }
    public static Contact ViewGet(int id){
        Contact con = new Contact();
        try {

            String query = "select * from contact where id= ? " ;
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1,id);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                con.setId(rs.getInt(1));
                con.setName(rs.getString(2));
                con.setEmail(rs.getString(3));
                con.setPhno(rs.getString(4));
                con.setAbout(rs.getString(5));
            }

        }catch (SQLException e){
            e.printStackTrace();
        }return con;
    }
    public static boolean edit(Contact con,Contact ps){
        boolean f = false;
        try{
            String query = "UPDATE contact SET name = ?, email = ?, phno = ?, about = ? WHERE id = ?";
            PreparedStatement pr = conn.prepareStatement(query);
            pr.setString(1,con.getName());
            pr.setString(2,con.getEmail());
            pr.setString(3,con.getPhno());
            pr.setString(4,con.getAbout());
            pr.setInt(5,ps.getId());
            int t = pr.executeUpdate();
            if(t>0){
                f = true;
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return f;
    }
    public static  boolean delete(int id){
        boolean f = false;
        try{
            String query = "DELETE FROM contact WHERE id = ?";
            PreparedStatement st = conn.prepareStatement(query);
            st.setInt(1,id);
            int rowUP = st.executeUpdate();
            if(rowUP>0){
                f = true;
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return f;

    }

}
