package com.ecommerce.admin.customer.dao;

import com.ecommerce.Entites.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CustomerDAO extends JpaRepository<Customer , String> {
    @Query("update Customer c set c.state =?2 where c.id=?1")
    void updateCustomerStateById(String id ,boolean state);
}
