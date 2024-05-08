package com.ecommerce.admin.product.service;

import com.ecommerce.Entites.Product;

import java.util.List;

public interface ProductService {
    Product createProduct(Product product);
    Product updateProduct(Product product);
    void deleteProduct(Product product);
    Product getProduct(int id);
    List<Product> getProducts();
}
