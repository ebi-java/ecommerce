package com.ecommerce.admin.product.service;

import com.ecommerce.Entites.Product;
import com.ecommerce.admin.product.dao.productDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImp implements ProductService {
    @Autowired
    productDAO productDAO;


    @Override
    public List<Product> getProducts() {
        return productDAO.findAll();
    }
    @Override
    public Product getProduct(int id) {
        return productDAO.findById(id).get();
    }
    @Override
    public Product createProduct(Product product) {
        return productDAO.save(product);
    }

    @Override
    public Product updateProduct(Product product) {
        return productDAO.save(product);
    }

    @Override
    public void deleteProduct(int id) {
        productDAO.deleteById(id);
    }


}
