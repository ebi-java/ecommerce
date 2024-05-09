package com.ecommerce.customer.category.viewController;

import com.ecommerce.admin.category.service.CategoryService;
import com.ecommerce.customer.category.service.CustomerCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
@RequestMapping("/customer/categories")
public class CustomerCategoryViewController {
    @Autowired
    private CustomerCategoryService customerCategoryService;


    @RequestMapping("")
    public String showCategories(Model model){
        model.addAttribute("customercategory", customerCategoryService.getAllCustomerCategories());
        return "customer-categories-list";
    }
    @RequestMapping("/id-sort")
    public String sortByID(Model model){
        model.addAttribute("customercategory", customerCategoryService.sortCategoryByID());
        return "customer-categories-list";
    }

    @RequestMapping("/searchByName")
    public String searchCategoryByName(@RequestParam String name, Model model){
        if(name == null || name.isEmpty()) {
            model.addAttribute("customercategory", customerCategoryService.getAllCustomerCategories());
        } else {
            model.addAttribute("customercategory", customerCategoryService.findCategoryByName(name));
        }
        return "customer-categories-list";
    }

    @RequestMapping("/searchByID/{id}")
    public String searchCategoryByID(@PathVariable int id, Model model){
        model.addAttribute("customercategoryid", customerCategoryService.getCustomerCategoryByID(id));
        return "customer-categories-list";
    }

    @RequestMapping("/showProducts/{id}")
    public String updateCategory(@PathVariable int id, Model model){
        model.addAttribute("customercategory", customerCategoryService.getCustomerCategoryByID(id));
        return "customer-products-list";
    }
}
