/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.view.controller;

import com.pettopia.view.utilities.ValidationChecks;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Passant
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (checkValidation(email,password)) {
            //  TODO calling db methods 
            
        }
    }

    private boolean checkValidation(String email, String pass) {
        boolean isValidate = false;
        ValidationChecks check = new ValidationChecks();
        if (check.isEmail(email) && check.isValidPassword(pass)) {
            isValidate = true;
        }
        return isValidate;
    }
}
