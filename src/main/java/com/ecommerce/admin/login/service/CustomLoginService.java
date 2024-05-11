package com.ecommerce.admin.login.service;

import com.ecommerce.Entites.Admin;
import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.dao.CustomLoginDao;
import com.ecommerce.admin.login.dao.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomLoginService {
    @Autowired
    private CustomLoginDao loginDAO;


    public Boolean login(String username, String password) {
        return loginDAO.findByNameAndPassword(username, password);
    }

    public User login(String username) {
        return loginDAO.findByUsername(username);
    }
}
