package com.ecommerce.admin.accounts.RESTControllers;

import com.ecommerce.Entites.Account;
import com.ecommerce.admin.accounts.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/accounts")
public class AccountsRESTController {
    @Autowired
    AccountService accountService;

    @GetMapping
    public List<Account> ShowAll(){
        return accountService.getAll();
    }
}
