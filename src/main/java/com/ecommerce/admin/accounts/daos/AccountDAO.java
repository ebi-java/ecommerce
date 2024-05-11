package com.ecommerce.admin.accounts.daos;

import com.ecommerce.Entites.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import java.util.List;

public interface AccountDAO extends JpaRepository<Account,String> {
    List<Account> findAllByCustomer_Id(String id);

}
