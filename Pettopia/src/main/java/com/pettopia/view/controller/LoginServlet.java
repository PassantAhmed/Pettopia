/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.view.controller;

import com.pettopia.controller.HelperController;
import com.pettopia.view.utilities.ValidationChecks;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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

    private HelperController loginController;
    private List<String> data;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        if (checkValidation(email, password)) {
            loginController = new HelperController();
            if (loginController.login(email, password)) {

                data = loginController.getUser(email);
                if (data.get(3).equals(password)) {
                    request.getSession(true).setAttribute("firstName", data.get(0));
                    request.getSession().setAttribute("lastName", data.get(1));
                    request.getSession().setAttribute("email", data.get(2));
                    request.getSession().setAttribute("password", data.get(3));
                    request.getSession().setAttribute("job", data.get(4));
                    request.getSession().setAttribute("address", data.get(5));
                    request.getSession().setAttribute("creditNo", data.get(6));
                    request.getSession().setAttribute("creditLimit", data.get(7));
                    request.getSession().setAttribute("birthdate", data.get(8));
                    
                    response.sendRedirect("index.html");
                    
                } else {
                    request.setAttribute("errorMessage", "Wrong password, Please enter correct password");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                
            } else {
                request.setAttribute("errorMessage", "Wrong E-mail Address, Please enter correct email");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorMessage", "Please make sure that your data is valid");
            request.getRequestDispatcher("login.jsp").forward(request, response);
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
