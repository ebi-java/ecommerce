package com.ecommerce.customer.product.service;

import com.ecommerce.Entites.Product;
import com.ecommerce.customer.product.dao.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    @Autowired
    ProductDao productDao;

    public List<Product> getAllProducts(){
        return productDao.findAll();
    }

    public List<Product> findByCategory(String name) {
        return productDao.findByCategory(name);
    }

    public Product findByName(String name){
        return productDao.findByName(name);
    }

    public Optional<Product> findById(int id){
        return productDao.findById(id);
    }
}
