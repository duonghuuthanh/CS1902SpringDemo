package com.dht.service.impl;


import com.dht.pojo.Comments;
import com.dht.pojo.Product;
import com.dht.repository.ProductRepository;
import com.dht.service.ProductService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author admin
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> getProducts(Map<String, String> params, int page) {
        return this.productRepository.getProducts(params, page);
    }

    @Override
    public int countProduct() {
        return this.productRepository.countProduct();
    }

    @Override
    public boolean deleteProduct(int id) {
        return this.productRepository.deleteProduct(id);
    }

    @Override
    public boolean addProduct(Product p) {
        //p.setImage("https://res.cloudinary.com/dxxwcby8l/image/upload/v1647248652/dkeolz3ghc0eino87iec.jpg");
        
        return this.productRepository.addProduct(p);
    }
    
    public List<Object[]> cateStats() {
        return this.productRepository.cateStats();
    }

    @Override
    public List<Object[]> revenueStats() {
        return this.productRepository.revenueStats();
    }
    
    @Override
    public List<Comments> getComments() {
        return this.productRepository.getComments();
    }
    
    @Override
    public Product getProductById(int id) {
        return this.productRepository.getProductById(id);
    }

    @Override
    public Comments addComment(String content, int productId) {
        return this.productRepository.addComment(content, productId);
    }
    
    
}
