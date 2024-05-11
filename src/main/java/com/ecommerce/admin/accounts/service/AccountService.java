package com.ecommerce.admin.accounts.service;

import com.ecommerce.Entites.Account;
import com.ecommerce.admin.accounts.daos.AccountDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

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
    public Optional<Account> getAccount(String accNO){
        return accountDAO.findById(accNO);
    }
    public void deleteAccount(String accNO){
        accountDAO.deleteById(accNO);
    }
    public void addNewAccount(Account account){
        accountDAO.save(account);
    }
}
