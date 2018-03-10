/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.controller;

import com.pettopia.model.bean.Product;
import com.pettopia.model.database.ProductDao;
import java.util.ArrayList;

/**
 *
 * @author khaled
 */

public class ProductsController {
    ProductDao dao = new ProductDao();
    
    public ArrayList<Product> getAvailableProducts(){
       
        return dao.getAllProducts();
    }
    
    public boolean adminInsertProduct(Product p)
    {
      return dao.insertProducts(p);
    }
    
    public int getNextSeq ()
    { 
        return dao.getNextSeq();
    }
    
    public Product getProductById(int id)
    {
      return dao.selectOneProduct(id);
    }
    
    public boolean editProduct(Product p)
    {
    	
    	return dao.updateProducts(p);
    }
}
