package com.ecommerce.customer.category.dao;

import com.ecommerce.Entites.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerCategoryDAO extends JpaRepository<Category, Integer> {

    public Category findById(int id);
    public List<Category> findByName(String name);
    @Query("from Category c ORDER BY c.id")
    public List<Category> sortByID();
}
