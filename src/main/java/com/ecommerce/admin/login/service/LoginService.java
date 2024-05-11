package com.ecommerce.admin.login.service;

import com.ecommerce.Entites.Admin;
import com.ecommerce.admin.login.dao.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {


    @Autowired
    private LoginDAO loginDAO;


    public Boolean login(String adminName, String adminPassword) {
        return loginDAO.findByNameAndPassword(adminName, adminPassword);
    }

    public Admin login(String adminName) {
        return loginDAO.findByName(adminName);
    }
}

