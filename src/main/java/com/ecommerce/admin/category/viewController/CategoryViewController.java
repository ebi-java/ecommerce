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
        return "add-category";
    }

    @RequestMapping("/processAddCategory")
    public String processAddCategory(Category category, Model model, BindingResult bindingResult){
        categoryService.insertCategory(category);
        model.addAttribute("category", categoryService.getAllCategories());
        if(bindingResult.hasErrors())
            return "add-category";
        else return "category-list";
    }

    @RequestMapping("/showAllCategories")
    public String showCategories(Model model){
        model.addAttribute("category", categoryService.getAllCategories());
        return "category-list";
    }

    @RequestMapping("/deleteCategory/{id}")
    public String delete(@PathVariable int id, Model model){
        categoryService.deleteCategory(id);
        model.addAttribute("category", categoryService.getAllCategories());
        return "category-list";
    }

    @RequestMapping("/updateCategory/{id}")
    public String updateCategory(@PathVariable int id, Model model){
        model.addAttribute("category", categoryService.getCategoryByID(id));
        return "update-category";
    }

    @RequestMapping("/updateCategory/update")
    public String processUpdateCategory(Category category, Model model, BindingResult bindingResult){
        categoryService.updateCategory(category);
        model.addAttribute("category", categoryService.getAllCategories());
        if(bindingResult.hasErrors())
            return "update-category";
        else return "category-list";
    }


    @RequestMapping("/id-sort")
    public String sortByID(Model model){
        model.addAttribute("category", categoryService.sortCategoryByID());
        return "category-list";
    }

    @RequestMapping("/searchByName/{name}")
    public String searchCategoryByName(@PathVariable String name, Model model){
        model.addAttribute("category", categoryService.findCategoryByName(name));
        return "category-list";
    }


    @RequestMapping("/searchByID/{id}")
    public String searchCategoryByID(@PathVariable int id, Model model){
        model.addAttribute("category", categoryService.getCategoryByID(id));
        return "category-list";
    }



}
