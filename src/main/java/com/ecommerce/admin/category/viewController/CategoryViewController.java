package com.ecommerce.admin.category.viewController;

import com.ecommerce.Entites.Category;
import com.ecommerce.admin.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/categories")
public class CategoryViewController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/addCategory")
    public String addCategory(Model model){
        model.addAttribute("category", new Category());
        return "edit-category";
    }

    @RequestMapping("/updateCategory/{id}")
    public String updateCategory(@PathVariable int id, Model model){
        model.addAttribute("category", categoryService.getCategoryByID(id));
        return "edit-category";
    }


    @RequestMapping("/processCategory")
    public String processCategory(Category category, Model model, BindingResult bindingResult){
        if(bindingResult.hasErrors())
            return "edit-category";

        if (category.getId() != 0) {
            categoryService.updateCategory(category);
            model.addAttribute("category", categoryService.getAllCategories());
        } else {
            categoryService.insertCategory(category);
            model.addAttribute("category", categoryService.getAllCategories());
        }
        return "categories-list";
    }


    @RequestMapping("")
    public String showCategories(Model model){
        model.addAttribute("category", categoryService.getAllCategories());
        return "categories-list";
    }

    @RequestMapping("/deleteCategory/{id}")
    public String delete(@PathVariable int id, Model model){
        categoryService.deleteCategory(id);
        model.addAttribute("category", categoryService.getAllCategories());
        return "categories-list";
    }

    @RequestMapping("/id-sort")
    public String sortByID(Model model){
        model.addAttribute("category", categoryService.sortCategoryByID());
        return "categories-list";
    }

    @RequestMapping("/searchByName/{name}")
    public String searchCategoryByName(@PathVariable String name, Model model){
        model.addAttribute("category", categoryService.findCategoryByName(name));
        return "categories-list";
    }


    @RequestMapping("/searchByID/{id}")
    public String searchCategoryByID(@PathVariable int id, Model model){
        model.addAttribute("category", categoryService.getCategoryByID(id));
        return "categories-list";
    }

}
