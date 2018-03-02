/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.model.database;

import com.pettopia.model.bean.Product;
import com.pettopia.model.bean.User;
import com.pettopia.model.databaseInterfaces.ProductsDatabaseOperationInterface;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ahmedelgawesh
 */
public class ProductDao implements ProductsDatabaseOperationInterface {

    ProductsCrud productsCrud;

    public ProductDao() {
        productsCrud = new ProductsCrud();
    }

    @Override
    public boolean insertProducts(Product productsInformations) {

        String strStatment = "insert into petproducts (productname,productprice,productquantity,productdescription,category) values ('" + productsInformations.getName() + "','" + productsInformations.getPrice() + "','" + productsInformations.getQuantity() + "','" + productsInformations.getDescription() + "','" + productsInformations.getCategory() + "')";
        return productsCrud.insert(strStatment);
    }

    @Override
    public boolean updateProducts(Product productsInformations) {

        String strStatment = "update petproducts set productname='" + productsInformations.getName() + "',productprice='" + productsInformations.getPrice() + "',productquantity='" + productsInformations.getQuantity() + "',productdescription='" + productsInformations.getDescription() + "',category='" + productsInformations.getCategory() + "' where productid='" + productsInformations.getId() + "')";
        return productsCrud.update(strStatment);
    }

    @Override
    public boolean deleteProducts(Product productsInformations) {
        String strStatment = "delete  from petproducts where productid ='" + productsInformations.getId() + "' ";
        return productsCrud.update(strStatment);
    }

    @Override
    public ArrayList<Product> selectProducts(String productsName) {
        String selectStatement = "select  * from petusers where  useremail= '" + productsName + "'";
        return productsCrud.select(selectStatement);
    }

    @Override
    public Product selectOneProduct(String productsName) {
        
         String selectStatement = "select  * from petusers where  useremail= '" + productsName + "'";
        return productsCrud.select(selectStatement,"one");

    }
    
    

}
