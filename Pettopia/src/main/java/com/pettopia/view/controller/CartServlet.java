/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.view.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Passant
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {

    List<String> productIds = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // TODO CALLING DB

        request.getSession().setAttribute("cartProducts", productIds);
        RequestDispatcher dispatcher = request.getRequestDispatcher("productscart.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productID");
        productIds.add(productId);
        request.getSession().setAttribute("cartProducts", productIds);
        request.getSession().setAttribute("cartProductsNo", productIds.size());
        PrintWriter out = response.getWriter();
        out.print(productIds.size());
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("deletedProductID");
        for(int counter = 0; counter<productIds.size(); counter++){
            if(productId.equals(productIds.get(counter))){
                productIds.remove(counter);
                break;
            }
        }
    }

}