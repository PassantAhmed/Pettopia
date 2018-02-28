/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pettopia.model.databaseInterfaces;

import com.pettopia.model.bean.Product;
import java.util.ArrayList;

/**
 *
 * @author ahmedelgawesh
 */
public interface ProductsDatabaseOperationInterface {

    public boolean insertProducts(Product productsInformations);

    public boolean updateProducts(Product productsInformations);

    public boolean deleteProducts(String productName);

    public ArrayList<Product> selectProducts(String productsInformations);

}
