package com.ecommerce.admin.login.security;

import com.ecommerce.Entites.Admin;
import com.ecommerce.admin.login.dao.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class AdminUserDetailsService implements UserDetailsService {

    @Autowired
    private LoginDAO loginDAO;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println(username);
        Admin admin = loginDAO.findByEmail(username);
        System.out.println(admin);
        if (admin == null) {
            throw new UsernameNotFoundException("Could not find user");
        }

        return new AdminUserDetails(admin);
    }
}