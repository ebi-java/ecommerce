package com.ecommerce.customer.category.restController;

import com.ecommerce.Entites.Category;
import com.ecommerce.customer.category.service.CustomerCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/customer/category")
public class CustomerCategoryRestController {

    @Autowired
    private CustomerCategoryService customerCategoryService;

    @GetMapping
    public List<Category> getAllCategory() {
        return customerCategoryService.getAllCustomerCategories();
    }

    // get by id
    @GetMapping("/id/{id}")
    public Category getCategoryById(@PathVariable int id) {
        return customerCategoryService.getCustomerCategoryByID(id);
    }

    @GetMapping("/{name}")
    public List<Category> getCategoryByName(@PathVariable String name) {
        return customerCategoryService.findCategoryByName(name);
    }

}
