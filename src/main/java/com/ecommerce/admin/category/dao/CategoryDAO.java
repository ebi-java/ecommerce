package com.ecommerce.admin.category.dao;
import com.ecommerce.Entites.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryDAO extends JpaRepository<CategoryDAO, Integer> {
    public List<Category> findByID(int id);
    public List<Category> findByName(String name);
    @Query("from Category c ORDER BY c.id")
    public List<Category> sortByID();

}
