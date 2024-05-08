package com.ecommerce.admin.customer.service;

import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    public Customer getCustomerById(String id){
        return customerDAO.findById(id).get();
    }

    public void saveCustomer(Customer c){
        customerDAO.save(c);
    }

    public void deleteCustomer(String id){
        customerDAO.deleteById(id);
    }

    public void updateCustomerStateById(String id, boolean state){
        customerDAO.updateCustomerStateById(id,state);
    }
    public List<Customer> getAllCustomers(){
        return customerDAO.findAll();
    }
}
