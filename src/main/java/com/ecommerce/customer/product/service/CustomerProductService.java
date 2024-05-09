package com.ecommerce.customer.product.service;

import com.ecommerce.Entites.Product;
import com.ecommerce.customer.product.dao.CustomerProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerProductService {
    @Autowired
    CustomerProductDao productDao;

    public List<Product> getAllProducts(){
        return productDao.findAll();
    }

    public List<Product> findByCategory(String name, String type) {
        return productDao.findByCategory(name, type);
    }

    public Product findByName(String name, String type){
        return productDao.findByName(name, type);
    }

    public Optional<Product> findById(int id){
        return productDao.findById(id);
    }
}
