package com.ecommerce.DAOS;

import com.ecommerce.Entites.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerDAO extends JpaRepository<Customer , String> {

}
