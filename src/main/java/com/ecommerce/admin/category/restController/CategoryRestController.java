package com.ecommerce.admin.category.restController;

import com.ecommerce.Entites.Category;
import com.ecommerce.admin.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/admin/category")
public class CategoryRestController {

    @Autowired
    private CategoryService categoryService;

    // get all
    @GetMapping
    public List<Category> getAllCategory() {
        return categoryService.getAllCategories();
    }

    // get by id
    @GetMapping("/id/{id}")
    public Category getCategoryById(@PathVariable int id) {
        return categoryService.getCategoryByID(id);
    }
    @GetMapping("/{name}")
    public List<Category> getCategoryByName(@PathVariable String name) {
        return categoryService.findCategoryByName(name);
    }

    // insert
    @PostMapping
    public Category insertCategory(@RequestBody Category c) {
        categoryService.insertCategory(c);
        return c;
    }

    //update
    @PutMapping
    public Category updatCategory(@RequestBody Category c) {
        categoryService.updateCategory(c);
        return c;
    }

    //delete
    @DeleteMapping("/delete/{id}")
    public String deleteCategory(@PathVariable int id) {
        categoryService.deleteCategory(id);
        return "Deleted Successfully";
    }
}


