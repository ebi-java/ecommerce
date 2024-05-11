package com.ecommerce.customer.login.dao;

import com.ecommerce.Entites.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CustomerLoginDao extends JpaRepository<Customer,String> {
    @Query("select case when count(c) > 0 then true else false end from Customer c where c.username = ?1 and c.password = ?2")
    boolean findByUsernameAndPassword(String username, String password);

    @Query("select c from Customer c where c.username =?1")
    Customer getCustomerByUsername(String username);
}
