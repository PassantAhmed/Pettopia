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
    public ArrayList<Product> getAvailableProducts(){
        ProductDao dao = new ProductDao();
        return dao.getAllProducts();
    }
}
