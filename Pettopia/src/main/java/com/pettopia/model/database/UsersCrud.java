/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.model.database;

import com.pettopia.model.bean.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ahmedelgawesh
 */
public class UsersCrud 
{
    Database dbClass;
    Connection conn;
    Statement stmt = null;


public  UsersCrud()
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



    public boolean insert(String strStatement)
    {
        try {
                    stmt = conn.createStatement();
                    stmt.executeUpdate(strStatement);
                    System.out.println("Record saved");
                 } catch (SQLException ex) {
            Logger.getLogger(UsersCrud.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
        
        
    }   
    public boolean delete(String strStatment)
    {
        try
        {
            //Create statement
            stmt = conn.createStatement();
            stmt.executeUpdate(strStatment);
            System.out.println("Records deleted");
        }
        catch(SQLException e)
        {
            System.out.println("com.pettopia.model.database.UsersCrud.delete()"+e);
            return false;
        }
        return true;
    }
    
    public boolean update(String strStatment)
    {
          try
        {
            //Create statement(update)
            stmt = conn.createStatement();
            stmt.executeUpdate(strStatment);
            System.out.println("Records updated");  
        }
          catch(SQLException e)
          {
              System.out.println(e+"com.pettopia.model.database.UsersCrud.updateException()");
              return false;
          }
          return true;
    }
        
    
    
    
    
    public ArrayList<User> select(String strStatement)
    {
        ArrayList<User> usersList = new ArrayList<User>();
         try
         {    
                stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(strStatement);
                while (rs.next())
                {
                        usersList.add(new User(rs.getString("adminemail"),rs.getString("adminpassword")));
                }
               
         } 
         catch (SQLException ex)
         {
                    Logger.getLogger(AdminsCrud.class.getName()).log(Level.SEVERE, null, ex);
                 
         }
         return usersList;
      }
  
    
    
    
    
}
