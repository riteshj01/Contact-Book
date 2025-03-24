package com.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconnect {
    private static Connection connection;

    public static Connection getConnection() {
        try {
            if (connection == null) {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/command", "root", "Riteishj9097");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;

    }
}
