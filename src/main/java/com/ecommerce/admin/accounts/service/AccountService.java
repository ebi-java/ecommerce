package com.ecommerce.admin.accounts.service;

import com.ecommerce.Entites.Account;
import com.ecommerce.admin.accounts.daos.AccountDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountService {
    @Autowired
    AccountDAO accountDAO;

    public List<Account> getAllCutomerAccounts(String id){
        return accountDAO.findAllByCustomer_Id(id);
    }
    public List<Account> getAll(){
        return accountDAO.findAll();
    }
    public void addNewAccount(Account account){
        accountDAO.save(account);
    }
}
