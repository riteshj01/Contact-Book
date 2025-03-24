package com.dao;

import java.sql.*;

import com.intial.us;

public class userdao {
    private  static Connection conn;

    public userdao(Connection conn) {
        super();
        this.conn = conn;
    }



    public boolean register(us user) {
        boolean f = false;
        try {
            String str = "INSERT INTO userdata(name,email,password)" +
                    "VALUES('" + user.getName() + "','" + user.getEmail() + "','" + user.getPassword() + "')";
            Statement st = conn.createStatement();
            int i=st.executeUpdate(str);
            if(i>0){
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }
    public static us getlogin(String email, String password){
        us user1 = null;
        boolean f = false;
        try{
            String query = "select * from userdata where email = ? and password = ?";
            PreparedStatement pr = conn.prepareStatement(query);
            pr.setString(1,email);
            pr.setString(2,password);
            ResultSet rs = pr.executeQuery();
            while(rs.next()){
                user1 = new us();
                user1.setId(rs.getInt(1));
                user1.setName(rs.getString(2));
                user1.setEmail(rs.getString(3));
                user1.setPassword(rs.getString(4));

            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    return user1;}
}
