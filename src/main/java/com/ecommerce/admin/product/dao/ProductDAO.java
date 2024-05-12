package com.ecommerce.admin.product.dao;

import com.ecommerce.Entites.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDAO extends JpaRepository<Product, Integer> {

    @Query("from Product p where  p.categories.type = ?1")
    List<Product> findByCategoryType(String type);

}
