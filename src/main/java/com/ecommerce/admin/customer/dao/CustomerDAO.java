package com.ecommerce.admin.customer.dao;

import com.ecommerce.Entites.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;

import java.util.Optional;

public interface CustomerDAO extends JpaRepository<Customer , String> {
    //customer updates
    @Query("update Customer c set c.state =?2 where c.id=?1")
    void updateCustomerStateById(String id ,boolean state);
    @Query("update Customer c set c.name =?2 where c.id=?1")
    void updateCustomerNameById(String id ,String name);
    @Query("update Customer c set c.email =?2 where c.id=?1")
    void updateCustomerEmailById(String id ,String email);
    @Query("update Customer c set c.phone =?2 where c.id=?1")
    void updateCustomerPhoneById(String id ,String phone);
    @Query("update Customer c set c.birthDate =?2 where c.id=?1")
    void updateCustomerBirthDataById(String id , LocalDate date);

    @Query("select c from Customer c where c.email = ?1")
    Optional<Customer> findByEmail(String email);

}
