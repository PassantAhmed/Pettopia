package com.pettopia.model.database;

import java.sql.*;
import oracle.jdbc.driver.OracleDriver;

public class Database {

    private static Database instance;
    private volatile Connection conn;

    private Database() throws ClassNotFoundException, SQLException {

        try{
                    Class.forName("oracle.jdbc.driver.OracleDriver");
        //step2 create  the connection object  
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pet", "pet");
        }catch (SQLException ex) {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        //step2 create  the connection object  
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe", "pet", "pet");
        }

    }

    public static Database getInstance() throws SQLException, ClassNotFoundException {
        if (instance == null) {
            instance = new Database();
        }

        return instance;
    }

    public Connection getConnection() {
        return conn;
    }

    public void closeConnection() throws SQLException {
        conn.close();
    }

}
