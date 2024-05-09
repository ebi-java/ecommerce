package com.ecommerce.customer.product.restController;

import com.ecommerce.Entites.Product;

import com.ecommerce.customer.product.service.CustomerProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("customer/product")
public class CustomerProductRestController {


    @Autowired
    private CustomerProductService productService;


    @GetMapping
    public List<Product> getProducts() {
        return productService.getAllProducts();
    }
    @GetMapping("/{id}")
    public Product getProductById(@PathVariable int id){

        return productService.findById(id).get();
    }
    @GetMapping("/{name}/{type}")
    public Product getProductByNameAndType(@PathVariable String name, @PathVariable String type){
        return productService.findByName(name,type);
    }
    @GetMapping("category/{name}/{type}")
    public List<Product> getProductByCategory(@PathVariable String name, @PathVariable String type){
        return productService.findByCategory(name,type);
    }




}
