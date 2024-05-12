package com.ecommerce.admin.accounts.daos;

import com.ecommerce.Entites.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import java.util.List;

public interface AccountDAO extends JpaRepository<Account,String> {
    @Query("from Account a where a.customer.id = ?1")
    List<Account> findByCustomerId(String id);
}
