/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.view.controller;

import com.pettopia.model.bean.Product;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "PayServlet", urlPatterns = {"/PayServlet"})
public class PayServlet extends HttpServlet {

    List<Product> productList = new ArrayList<Product>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productList = (List<Product>) request.getAttribute("cartListedProducts");
        String productId = request.getParameter("deletedProductID");
        if (productList != null) {
            System.out.println(productList.get(0).getId());
            for (int counter = 0; counter < productList.size(); counter++) {
                if (productId.equals(productList.get(counter).getId())) {
                    productList.remove(counter);
                    request.getSession().setAttribute("cartProductsNo", productList.size());
                    request.getSession().setAttribute("cartListedProducts", productList);
                    break;
                }
            }
        }
        response.sendRedirect("CartServlet");
    }

}
