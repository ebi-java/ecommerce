package com.ecommerce.admin.product.dao;

import com.ecommerce.Entites.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface productDAO extends JpaRepository<Product, Integer> {

}
