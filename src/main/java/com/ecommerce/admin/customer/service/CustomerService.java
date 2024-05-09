package com.ecommerce.admin.customer.service;

import com.ecommerce.Entites.Customer;
import com.ecommerce.admin.customer.dao.CustomerDAO;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

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
    public void updateCustomerBirthDateById(String id, LocalDate birthDate){
        customerDAO.updateCustomerBirthDataById(id,birthDate);

    }
    public void updateCustomerEmailById(String id, String email){
        customerDAO.updateCustomerEmailById(id, email);
    }
    public void updateCustomerNameById(String id, String name){
        customerDAO.updateCustomerNameById(id, name);
    }

    public void updateCustomerPhoneNumberById(String id, String phoneNumber){
        customerDAO.updateCustomerPhoneById(id, phoneNumber);
    }


}
