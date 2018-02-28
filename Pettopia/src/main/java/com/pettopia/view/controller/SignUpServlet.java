/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.view.controller;

import com.pettopia.model.bean.User;
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
@WebServlet(name = "SignUpServlet", urlPatterns = {"/SignUpServlet"})
public class SignUpServlet extends HttpServlet {

    User user;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        user = new User();
        user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setJob(request.getParameter("job"));
        user.setAddress(request.getParameter("address"));
        user.setCreditNo(request.getParameter("creditNo1") + request.getParameter("creditNo2") + request.getParameter("creditNo3") + request.getParameter("creditNo4"));
        user.setCreditLimit(request.getParameter("creditLimit"));
        //user.setBirthDate(request.getParameter("birthdate"));
        if (checkValidation(user, request.getParameter("rePassword"))) {
            //  TODO
        }
    }

    private boolean checkValidation(User user, String rePass) {
        boolean isValidate = false;
        ValidationChecks check = new ValidationChecks();
        if (check.isName(user.getFirstName()) && check.isName(user.getLastName())
                && check.isEmail(user.getEmail()) && check.isValidPassword(user.getPassword())
                && /*check.isLegalAged(user.getBirthDate()) && */ !check.isEmptyString(user.getAddress())
                && check.isMatchPassword(user.getPassword(), rePass) && !check.isEmptyString(user.getJob())
                && check.isValidCreditLimit(user.getCreditLimit()) && check.isValidCreditNo(user.getCreditNo())) {
            isValidate = true;
        }
        return isValidate;
    }
}
