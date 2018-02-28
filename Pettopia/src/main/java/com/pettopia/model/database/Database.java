package com.pettopia.model.database;

import java.sql.*;

public class Database {

    private static Database instance;
    private volatile Connection conn;

    private Database() throws ClassNotFoundException, SQLException {

        String dbUrl = "jdbc:mysql://.....ip of server.....:3306/....dbname....";
        conn = DriverManager.getConnection(dbUrl, "....dbname...", "..dbpassword....");

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
