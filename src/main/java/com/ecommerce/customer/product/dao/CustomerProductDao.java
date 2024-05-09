package com.ecommerce.customer.product.dao;

import com.ecommerce.Entites.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerProductDao extends JpaRepository<Product , Integer> {
    @Query("from Product p where p.name = ?1 and p.categories.type = ?2")
    Product findByName(String name, String type);

    @Query("from Product p where p.categories.name = ?1 and p.categories.type = ?2")
    List<Product> findByCategory(String category, String type);

    @Query("from Product p where p.categories.type = ?1")
    List<Product> getAllByType(String type);
}
