/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author admin
 */
@Controller
public class IndexController {
    @RequestMapping("/")
    public String index(Model model,
            @RequestParam Map<String, String> params) {
        List<String> categories = new ArrayList<>();
        categories.add("Mobile");
        categories.add("Tablet");
        categories.add("Desktop");
        
        model.addAttribute("categories", categories);
        
        List<String> products = new ArrayList<>();
        products.add("iPhone 12");
        products.add("iPhone 13");
        products.add("iPad PRO 2021");
        products.add("Galaxy Tab 7");
        products.add("iPhone 12");
        products.add("iPhone 12");
        products.add("iPhone 12");
        products.add("iPhone 13");
        products.add("iPad PRO 2021");
        products.add("Galaxy Tab 7");
        products.add("iPhone 12");
        products.add("iPhone 12");
        
        String kw = params.get("kw");
        if (kw == null)
            model.addAttribute("products", products);
        else
            model.addAttribute("products", products.stream().filter(p -> p.contains(kw)).collect(Collectors.toList()));
        
        return "index";
    }
}
