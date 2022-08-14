/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dht.repository;

import com.dht.pojo.Comment;
import com.dht.pojo.Product;
import java.util.List;
import java.util.Map;

/**
 *
 * @author admin
 */
public interface ProductRepository {
    List<Product> getProducts(Map<String, String> params, int page);
    int countProduct();
    boolean deleteProduct(int id);
    boolean addProduct(Product p);
    List<Object[]> cateStats();
    List<Object[]> revenueStats();
    Product getProductById(int id);
    List<Comment> getComments(int productId);
    Comment addComment(String content, int productId);
}
