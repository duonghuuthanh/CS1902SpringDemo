/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dht.service;

import com.dht.pojo.Comments;
import com.dht.pojo.Product;
import java.util.List;
import java.util.Map;

/**
 *
 * @author admin
 */
public interface ProductService {
    List<Product> getProducts(Map<String, String> params, int page);
    int countProduct();
    boolean deleteProduct(int id);
    boolean addProduct(Product p);
    List<Object[]> cateStats();
    List<Object[]> revenueStats();
    List<Comments> getComments();
    Product getProductById(int id);
    Comments addComment(String content, int productId);
}
