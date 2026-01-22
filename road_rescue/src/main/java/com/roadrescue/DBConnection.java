package com.roadrescue;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/roadrescue";
    private static final String USER = "root";
    private static final String PASSWORD = "tiger";  // Replace with your MySQL password

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");  // Ensure the correct JDBC driver is loaded
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
