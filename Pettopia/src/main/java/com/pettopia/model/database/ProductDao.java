/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.model.database;

import com.pettopia.model.bean.Product;
import com.pettopia.model.databaseInterfaces.ProductsDatabaseOperationInterface;
import java.util.ArrayList;

/**
 *
 * @author ahmedelgawesh
 */
public class ProductDao implements ProductsDatabaseOperationInterface {

    @Override
    public boolean insertProducts(Product productsInformations) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean updateProducts(Product productsInformations) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean deleteProducts(String productName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Product> selectProducts(String productsInformations) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
