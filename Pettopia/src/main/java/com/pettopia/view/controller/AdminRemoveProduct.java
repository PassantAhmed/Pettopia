package com.pettopia.view.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.pettopia.controller.ProductsController;
import com.pettopia.model.bean.Product;

/**
 * Servlet implementation class AdminRemoveProduct
 */
@WebServlet("/AdminRemoveProduct")
public class AdminRemoveProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		ProductsController c = new ProductsController();
	   
		int productId = Integer.parseInt(request.getParameter("id").trim());
		
		System.out.println(productId);
		Gson g = new Gson();
		  Product p = c.getProductById(productId);
		  
		  if(p.getId()==0)
		  {
			  
		      String resultproduct = g.toJson("no data");
			  out.println(resultproduct);
		  }
		  else
		  {
		    c.removeProduct(productId);
		   
		    String resultproduct = g.toJson("deleted");
			
		    out.println(resultproduct);
		    
		  }
		
	}

}
