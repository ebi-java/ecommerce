package com.ecommerce.admin.login.security;

import com.ecommerce.Entites.Admin;
import com.ecommerce.Entites.User;
import com.ecommerce.admin.login.dao.CustomLoginDao;
import com.ecommerce.admin.login.dao.LoginDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private CustomLoginDao loginDAO;


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println(username);
        User user = loginDAO.findByUsername(username);
        System.out.println(user);
        if (user == null) {
            throw new UsernameNotFoundException("Could not find user");
        }

        return new CustomUserDetails(user, user.getPassword());
    }
}