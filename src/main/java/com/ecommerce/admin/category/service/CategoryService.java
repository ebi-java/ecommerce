package com.ecommerce.admin.category.service;

import com.ecommerce.Entites.Category;
import com.ecommerce.admin.category.dao.CategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    @Autowired
    private CategoryDAO dao;

    public Category getCategoryByID(int id) {return this.dao.findById(id);}

    public List<Category> getAllCategories() { return this.dao.findAll();}
    public void insertCategory(Category category) {this.dao.save(category);}

    public void deleteCategory(int id) {this.dao.deleteById(id);}

    public void updateCategory(Category category) {this.dao.save(category);}

    public List<Category> findCategoryByName(String name) { return this.dao.findByName(name);}

    public List<Category> sortCategoryByID() { return this.dao.sortByID();}


}
