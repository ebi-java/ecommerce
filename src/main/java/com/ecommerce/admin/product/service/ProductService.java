package com.ecommerce.admin.product.service;

import com.ecommerce.Entites.Product;

import java.util.List;

public interface ProductService {
    List<Product> getProducts();
    Product getProduct(int id);
    Product createProduct(Product product);
    Product updateProduct(Product product);
    void deleteProduct(int id);
}
