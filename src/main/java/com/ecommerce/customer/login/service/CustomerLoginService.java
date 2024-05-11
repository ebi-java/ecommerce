package com.ecommerce.customer.login.service;

import com.ecommerce.Entites.Customer;
import com.ecommerce.customer.login.dao.CustomerLoginDao;
import com.ecommerce.customer.login.security.CustomUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomerLoginService implements UserDetailsService {

    @Autowired
    private CustomerLoginDao customerLoginDao;

    public Optional<Customer> getCustomerByID(String id) {
        return this.customerLoginDao.findById(id);
    }

    public Boolean checkLoginData(String usename, String password) {
        return customerLoginDao.findByUsernameAndPassword(usename, password);
    }

    public Customer login(String username) {
        return customerLoginDao.getCustomerByUsername(username);
    }
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer customer = customerLoginDao.getCustomerByUsername(username);
        System.out.println(customer);
        if (customer == null) {
            throw new UsernameNotFoundException("Customer not found with username: " + username);
        }
        return new CustomUserDetails(customer);
    }

}
