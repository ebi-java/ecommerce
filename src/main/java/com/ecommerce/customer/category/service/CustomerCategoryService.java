package com.ecommerce.customer.category.service;

import com.ecommerce.Entites.Category;
import com.ecommerce.customer.category.dao.CustomerCategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerCategoryService {

    @Autowired
    private CustomerCategoryDAO customerCategoryDAO;
    public Category getCustomerCategoryByID(int id) {return this.customerCategoryDAO.findById(id);}

    public List<Category> getAllCustomerCategories() { return this.customerCategoryDAO.findAll();}

    public List<Category> findCategoryByName(String name) { return this.customerCategoryDAO.findByName(name);}

    public List<Category> sortCategoryByID() { return this.customerCategoryDAO.sortByID();}
}
