package com.ecommerce.customer.category.dao;

import com.ecommerce.Entites.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CustomerCategoryDAO extends JpaRepository<Category, Integer> {

    public Category findById(int id);

    @Query("from Category c where c.name = ?1 and c.type = ?2")
    List<Category> findByNameAndType(String name, String type);

    List<Category> findByName(String name);

    @Query("from Category c ORDER BY c.id")
    public List<Category> sortByID();

    @Query("from Category c where c.type = ?1")
    List<Category> findByType(String type);
}
