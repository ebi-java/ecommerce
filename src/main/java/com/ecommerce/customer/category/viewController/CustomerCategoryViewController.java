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
@RequestMapping("/customer")
public class CustomerCategoryViewController {
    @Autowired
    private CustomerCategoryService customerCategoryService;

    @RequestMapping("/retail")
    public String showRetailCategories(Model model){
        model.addAttribute("customercategory", customerCategoryService.findByType("Retail"));
        model.addAttribute("type", "retail");
        return "customer-categories-list";
    }

    @RequestMapping("/corporate")
    public String showCorporateCategories(Model model){
        model.addAttribute("customercategory", customerCategoryService.findByType("Corporate"));
        model.addAttribute("type", "corporate");
        return "customer-categories-list";
    }

    @RequestMapping("/id-sort")
    public String sortByID(Model model){
        model.addAttribute("customercategory", customerCategoryService.sortCategoryByID());
        return "customer-categories-list";
    }

    @RequestMapping("/searchByName")
    public String searchCategoryByName(@RequestParam String name,
                                       @RequestParam String type,
                                       Model model) {
        if(name == null || name.isEmpty()) {
            model.addAttribute("customercategory", customerCategoryService.findByType(type));
        } else {
            model.addAttribute("customercategory", customerCategoryService.findCategoryByNameAndType(name, type));
        }

        model.addAttribute("type", type.toLowerCase());
        return "customer-categories-list";
    }

    @RequestMapping("/homes")
    public String showAllCategories(Model model) {
        model.addAttribute("customercategory1", customerCategoryService.findByType("Retail"));
        model.addAttribute("customercategory2", customerCategoryService.findByType("Corporate"));
        return "home";
    }
    @RequestMapping("/showProducts/{id}")
    public String showCategoryProducts(@PathVariable int id, Model model){
        model.addAttribute("customercategory", customerCategoryService.getCustomerCategoryByID(id));
        return "cardProducts";
    }
}
