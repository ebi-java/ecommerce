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
    @Transactional
    public void toggleCustomerState(String id) {
        Customer customer = customerDAO.findById(id).orElse(null);
        if (customer != null) {

            customer.setState(!customer.isState());
            customerDAO.save(customer);
        }}


    public void deleteCustomer(String id){
        customerDAO.deleteById(id);
    }

    public void updateCustomerState(String id){
        Customer customer = customerDAO.findById(id).orElse(null);

        if (customer != null) {

            customer.setState(!customer.isState());
            customerDAO.save(customer);
        }    }



    public List<Customer> getAllCustomers(){
        return customerDAO.findAll();
    }
    public void updateCustomerBirthData(String id , LocalDate date){
        customerDAO.updateCustomerBirthDataById(id , date);
    }
    public void updateCustomerEmail(String id, String email){
        customerDAO.updateCustomerEmailById(id, email);
    }
    public void updateCustomerPhone(String id, String phone){
        customerDAO.updateCustomerPhoneById(id, phone);
    }
    public void updateCustomerName(String id, String address){
        customerDAO.updateCustomerNameById(id, address);
    }
}
