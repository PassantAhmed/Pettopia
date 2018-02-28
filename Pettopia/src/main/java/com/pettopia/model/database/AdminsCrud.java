/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.model.database;


/**
 *
 * @author ahmedelgawesh
 */
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.pettopia.model.bean.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdminsCrud {

    Database dbClass;
    Connection conn;
    Statement stmt = null;


public  AdminsCrud()
    {

        try
        {
            dbClass = Database.getInstance();
            conn = dbClass.getConnection();
        }
        catch (Exception ex)
        {
            Logger.getLogger(AdminDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
        
    /**************  select all admins the admin table ************************/

    public ArrayList<User> select(String strStatement)
    {
        ArrayList<User> adminsList = new ArrayList<User>();
         try
         {    
                stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(strStatement);
                while (rs.next())
                {
                        adminsList.add(new User(rs.getString("adminemail"),rs.getString("adminpassword")));
                }
               
         } 
         catch (SQLException ex)
         {
                    Logger.getLogger(AdminsCrud.class.getName()).log(Level.SEVERE, null, ex);
                 
         }
         return adminsList;
      }
  
               
       
    /**************  select all admins the admin table ************************/

    public boolean insert(String strStatement)
    {
         try
         {    
                stmt = conn.createStatement();
                stmt.executeUpdate(strStatement);
                System.out.println("Record saved");
               
         } 
         catch (SQLException ex)
         {
                    Logger.getLogger(AdminsCrud.class.getName()).log(Level.SEVERE, null, ex);
                    return false;
         }
         return true;
      }   
    
    
}
