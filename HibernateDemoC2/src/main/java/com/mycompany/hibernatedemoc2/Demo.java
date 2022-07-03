/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hibernatedemoc2;

import com.dht.pojo.Product;
import com.dht.services.ProductService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import org.hibernate.Session;

/**
 *
 * @author admin
 */
public class Demo {
    public static void main(String[] args) {
        try (Session session = HibernateUtils.getFactory().openSession()) {
            Query q = session.createNamedQuery("Product.findById", Product.class);
            q.setParameter("id", 1);
            List<Product> products = q.getResultList();
            products.forEach(p -> System.out.printf("%d - %s - %d\n", 
                p.getId(), p.getName(), p.getPrice()));
        }
//        ProductService s = new ProductService();
//        
//        Map<String, String> params = new HashMap<>();
//        params.put("kw", "iPhone");
//        params.put("fromPrice", "28000000");
//        
//        s.getProducts(params, 0).forEach(p -> System.out.printf("%d - %s - %.1f\n", 
//                p.getId(), p.getName(), p.getPrice()));
    }
}
