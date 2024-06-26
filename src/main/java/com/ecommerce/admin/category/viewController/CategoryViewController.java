package com.ecommerce.admin.category.viewController;

import com.ecommerce.Entites.Category;
import com.ecommerce.admin.category.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin/categories")
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
    public String processCategory(@ModelAttribute("category") Category category, Model model, BindingResult bindingResult){
        if(bindingResult.hasErrors())
            return "edit-category";

        if (category.getId() != null) {
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

    @RequestMapping("/searchByName")
    public String searchCategoryByName(@RequestParam String name, Model model){
        if(name == null || name.isEmpty()) {
            model.addAttribute("category", categoryService.getAllCategories());
        } else {
            model.addAttribute("category", categoryService.findCategoryByName(name));
        }
        return "categories-list";
    }



}
