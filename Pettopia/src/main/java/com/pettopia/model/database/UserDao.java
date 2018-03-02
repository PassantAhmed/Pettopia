/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.model.database;

import com.pettopia.model.bean.User;
import com.pettopia.model.databaseInterfaces.UsersDatabaseOperationInterface;
import java.util.ArrayList;

/**
 *
 * @author Passant
 */
public class UserDao implements UsersDatabaseOperationInterface {

    UsersCrud usersCrud;

    public UserDao() {
        usersCrud = new UsersCrud();
    }

    @Override
    public ArrayList<User> selectAllUsers(String usrEmail) {
        String selectStatement = "select  * from petusers where  useremail= '" + usrEmail + "'";
        return  usersCrud.select(selectStatement);
    }

    @Override
    public User selectUser(String usrEmail) {
 String selectStatement = "select  * from petusers where  useremail= '" + usrEmail + "'";
        return  usersCrud.select(selectStatement,"onlyone");

    }

    @Override
    public boolean isUserExist(String usrEmail) {
   String selectStatement = "select  * from petusers where  useremail= '" + usrEmail + "'";
        return  usersCrud.select(selectStatement,"","");
    }
    
    
    
    

    @Override
    public boolean registerNewUser(User usrDataObj) {
        String selectStatment = "insert into petusers (id,firstName,lastName,birthDate,password,job,email,address,creditLimit,creditNo) values ('" + usrDataObj.getId() + "' ,'" + usrDataObj.getFirstName() + "' ,'" + usrDataObj.getLastName() + "' ,'" + usrDataObj.getBirthDate() + "' ,'" + usrDataObj.getPassword() + "' ,'" + usrDataObj.getJob() + "' ,'" + usrDataObj.getEmail() + "' ,'" + usrDataObj.getAddress() + "' ,'" + usrDataObj.getCreditLimit() + "','" + usrDataObj.getCreditNo() + "')";

        return usersCrud.insert(selectStatment);
    }

    @Override
    public boolean updateUser(User usrDataObj) {
        String selectStatment = "update petusers set id='" + usrDataObj.getId() + "' ,firstName='" + usrDataObj.getFirstName() + "' ,lastName='" + usrDataObj.getLastName() + "' ,birthDate='" + usrDataObj.getBirthDate() + "' ,password='" + usrDataObj.getPassword() + "' ,job='" + usrDataObj.getJob() + "' ,email='" + usrDataObj.getEmail() + "' ,address='" + usrDataObj.getAddress() + "' ,creditLimit='" + usrDataObj.getCreditLimit() + "' ,creditNo='" + usrDataObj.getCreditNo() + "' where userid ='" + usrDataObj.getId() + "' ";
        return usersCrud.update(selectStatment);
    }

}
